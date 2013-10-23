/*  Fix It Felix Clone

    Version 1.1 2012-11-15

    By: Andrew Lawrence
*/

#include <Adafruit_GFX.h>      // Core graphics library
#include <Adafruit_ST7735.h> // Hardware-specific library
#include <SPI.h>
#include <SD.h>
#include "mem_syms.h"

#include "lcd_image.h"
#include <math.h>

// standard U of A library settings, assuming Atmel Mega SPI pins
#define SD_CS      5  // Chip select line for SD card
#define TFT_CS     6  // Chip select line for TFT display
#define TFT_DC     7  // Data/command line for TFT
#define TFT_RST    8  // Reset line for TFT (or connect to +5V)

#define BLACK 0x0000
#define WHITE 0xFFFF

Adafruit_ST7735 tft = Adafruit_ST7735(TFT_CS, TFT_DC, TFT_RST);

lcd_image_t background = { "Bkgrnd.lcd", 128, 160 };
lcd_image_t felix = { "Felix_2.lcd", 15, 32 };
lcd_image_t ralph = { "Ralph_3.lcd", 15, 32 };
lcd_image_t broken_win_1 = { "Bkn_Wn_1.lcd", 8, 19 };
lcd_image_t broken_door = { "Bkn_Door.lcd", 4, 17 };
lcd_image_t broken_overhang = { "Bkn_Over.lcd", 3, 3 };
lcd_image_t brick = { "Brick.lcd", 4, 4 };

Sd2Card card;

int jy_x_pin = A0;
int jy_y_pin = A1;
int select_pin = 9;

int x_0 = 0; // zero joystick
int y_0 = 0;

uint8_t felix_x = 56;
uint8_t felix_y = 122;
boolean first_level = true;

typedef struct {
  uint8_t x,y;
  boolean broken;
} window_t;

// this structure stores the position of the felix in terms of a "grid" postion
typedef struct {
  uint8_t x,y; // 0 < x < 4; 0 < y < 2
} felix_grid_t;

// this one stores the position of ralph on the "grid"
typedef struct {
  uint8_t x; // 0 < x < 4
} ralph_grid_t;

// this stores the grid value of the brick
typedef struct {
  uint8_t y; // 0 < y < 2
} brick_grid_t;

window_t windows [3][5];
felix_grid_t felix_pos;
ralph_grid_t ralph_pos;

void make_windows(window_t wndws [3][5]);
void break_windows(window_t wins [3][5]);

void draw_ralph(ralph_grid_t rph_ps);
void draw_felix(felix_grid_t fx_ps);

uint8_t get_felix_xpx (felix_grid_t fx_ps);
uint8_t get_felix_ypx (felix_grid_t fx_ps);
uint8_t get_ralph_px (ralph_grid_t rph_ps);
uint8_t get_brick_px (brick_grid_t bk_ps);

uint16_t current_score = 0;
uint16_t num_lives = 3;

uint32_t ralph_stop; // this will store the time when ralph stops attacking felix
uint32_t ralph_break; // this will store the time since ralph has stopped attacking felix

boolean begin_throw = true;
uint32_t start_throwing_1; // this will store the time since the first brick is thrown
uint8_t incr = 0;
boolean in_position = false;
uint8_t old_felix_x;

boolean game_over = false;
boolean won = false;

// the following function is used to return a value to modify a grid position;
// to be used in editing a structure which stores a grid position
int jy_to_grid(int num) {
  int res;
  if (num < 0) {
    res = -1;
  } else if (num > 0) {
    res = 1;
  }
  return res;
}

// the following the functions convert felix' grid position to his actual px positionx
uint8_t get_felix_xpx (felix_grid_t fx_ps) {
  return 26 + fx_ps.x*15;
}

uint8_t get_felix_ypx (felix_grid_t fx_ps) {
  return 52 + fx_ps.y*35;
}

uint8_t get_ralph_px (ralph_grid_t rph_ps) {
  return 26 + rph_ps.x*15;
}

void draw_felix(felix_grid_t fx_ps) {
  lcd_image_draw(&felix, &tft, 0, 0, get_felix_xpx(fx_ps), get_felix_ypx(fx_ps), 15, 32);
}

void draw_ralph(ralph_grid_t rph_ps) {
  lcd_image_draw(&ralph, &tft, 0, 0, get_ralph_px(rph_ps), 10, 15, 32);
}

void redraw_backgrnd() {
  lcd_image_draw(&background, &tft, get_felix_xpx(felix_pos), get_felix_ypx(felix_pos), get_felix_xpx(felix_pos), get_felix_ypx(felix_pos), 15, 32);
}

void draw_bkn_win() {
  if ((felix_pos.x == 2) && (felix_pos.y == 1)) {
    lcd_image_draw(&broken_overhang, &tft, 0, 0, windows[felix_pos.y][felix_pos.x].x, windows[felix_pos.y][felix_pos.x].y, 3, 3);
  } else if ((felix_pos.x == 2) && (felix_pos.y == 2)) {
    lcd_image_draw(&broken_door, &tft, 0, 0, windows[felix_pos.y][felix_pos.x].x, windows[felix_pos.y][felix_pos.x].y, 4, 17);
  } else {
    lcd_image_draw(&broken_win_1, &tft, 0, 0, windows[felix_pos.y][felix_pos.x].x, windows[felix_pos.y][felix_pos.x].y, 8, 19);
  }
}

void make_windows(window_t wndws [3][5]) { 
  uint8_t new_x,new_y;
  if (first_level) {
    for(int i = 0; i < 3; i++) {
      for(int j = 0; j < 5; j++) {
	if ((i == 1) && (j == 2)) { // draw broken overhang
	  wndws[i][j].x = 59;
	  wndws[i][j].y = 101;
	  wndws[i][j].broken = true;
        } else if ((i == 2) && (j == 2)) { // draw broken door
	  wndws[i][j].x = 58;
	  wndws[i][j].y = 137;
	  wndws[i][j].broken = true;
	} else {
	  new_x = 31 + j*14;
	  new_y = 55 + i*37;
	  wndws[i][j].x = new_x;
	  wndws[i][j].y = new_y;
	  wndws[i][j].broken = true;
	}
      }
    }
  } else {
    for(int i = 0; i < 3; i++) {
      for(int j = 0; j < 5; j++) {
	new_x = 31 + j*14;
	new_y = 55 + i*37;
	wndws[i][j].x = new_x;
	wndws[i][j].y = new_y;
	wndws[i][j].broken = true;
      }
    }
  }
}

void break_windows(window_t wins [3][5]) {
  if (first_level) {
    for(uint8_t i = 0; i < 3; i++) {
      for(uint8_t j = 0; j < 5; j++) {
	if ((i > 0) && (j == 2)) { // always break door and overhang
	  if (i == 1) {
	    lcd_image_draw(&broken_overhang, &tft, 0, 0, wins[i][j].x, wins[i][j].y, 3, 4); // draw broken overhang
	  } else {
	    lcd_image_draw(&broken_door, &tft, 0, 0, wins[i][j].x, wins[i][j].y, 4, 19); // draw broken door
	  }
	  continue;
	}
	if (wins[i][j].broken) {
	  lcd_image_draw(&broken_win_1, &tft, 0, 0, wins[i][j].x, wins[i][j].y, 8, 19);
	}
      }
    }
  } else {
    
  }
}

void change_score() {
  current_score += 100;
  tft.setTextColor(WHITE);
  tft.setCursor(42, 0);
  tft.fillRect(42, 0, 30, 8, BLACK);
  tft.print(current_score);
}
  
void take_life() { // oh the horror!! :/
  if (num_lives > 0) {
  num_lives--;
  tft.setTextColor(WHITE);
  tft.setCursor(115, 0);
  tft.fillRect(115, 0, 10, 8, BLACK);
  tft.print(num_lives);
  } else {
    game_over = true;
  }
}

void blink_felix() {
  for (int i = 0; i < 2; i++) {
    if (windows[felix_pos.y][felix_pos.x].broken) {
      redraw_backgrnd();
      draw_bkn_win();
    } else {
      redraw_backgrnd();
    }
    delay(500);
    draw_felix(felix_pos);
    delay(500);
  }
}

void attack_felix() {
  if ((ralph_pos.x == felix_pos.x) || (in_position)) { // ralph is in position; attack!!
    if (begin_throw) {
    start_throwing_1 = millis()/1000;
    begin_throw = false;
    in_position = true;
    }
    lcd_image_draw(&background, &tft, get_ralph_px(ralph_pos) + 5, 42 + 2*incr - 2, get_ralph_px(ralph_pos) + 5, 42 + 2*incr - 2, 4, 4); // redraw over previous brick
    // throw brick
      if ((42 + 2*incr) < 160) {
	  if (windows[(uint8_t) floor((long) ((2*incr - 13)/37))][ralph_pos.x].broken) { // redraw broken window if broken
	    if ((ralph_pos.x == 2) && ((uint8_t) floor((long) ((2*incr - 13)/37)) == 1)) { 
	      // draw the broken overhang
	      lcd_image_draw(&broken_overhang, &tft, 0, 0, windows[(uint8_t) floor((long) ((2*incr - 13)/37))][ralph_pos.x].x, windows[(uint8_t) floor((long) ((2*incr - 13)/37))][ralph_pos.x].y, 3, 3);
	    } else if ((ralph_pos.x == 2) && ((uint8_t) floor((long) ((2*incr - 13)/37)) == 2)) {
	      // draw broken door
	      lcd_image_draw(&broken_door, &tft, 0, 0, windows[(uint8_t) floor((long) ((2*incr - 13)/37))][ralph_pos.x].x, windows[(uint8_t) floor((long) ((2*incr - 13)/37))][ralph_pos.x].y, 4, 17);
	    } else {
	      // draw ordinary broken window
	    lcd_image_draw(&broken_win_1, &tft, 0, 0, windows[(uint8_t) floor((long) ((2*incr - 13)/37))][ralph_pos.x].x, windows[(uint8_t) floor((long) ((2*incr - 13)/37))][ralph_pos.x].y, 8, 19);
	    }
	  }
	  lcd_image_draw(&brick, &tft, 0, 0, get_ralph_px(ralph_pos) + 5, 42 + 2*incr, 4, 4);
	  incr++;
      if ((ralph_pos.x == felix_pos.x) && (42 + 2*incr >= get_felix_ypx(felix_pos)) && (42 + 2*incr <= (get_felix_ypx(felix_pos) + 32))) { // check if felix got hit
      lcd_image_draw(&background, &tft, get_ralph_px(ralph_pos) + 5, 42 + 2*incr - 2, get_ralph_px(ralph_pos) + 5, 42 + 2*incr - 2, 4, 4);
      ralph_stop = millis()/1000;
      begin_throw = true;
      incr = 0;
      in_position = false;
      blink_felix();
      take_life();
    }
      } else {
	ralph_stop = millis()/1000;
	begin_throw = true;
	incr = 0;
	in_position = false;
      }
  } else if (!in_position) { // move towards felix
    if (ralph_pos.x - felix_pos.x > 0) { // felix is to the left
      lcd_image_draw(&background, &tft, get_ralph_px(ralph_pos), 10, get_ralph_px(ralph_pos), 10, 15, 32);
      ralph_pos.x -= 1;
      draw_ralph(ralph_pos);
    } else { // felix is to the right
      lcd_image_draw(&background, &tft, get_ralph_px(ralph_pos), 10, get_ralph_px(ralph_pos), 10, 15, 32);
      ralph_pos.x += 1;
      draw_ralph(ralph_pos);
    }
  }
}

void setup() {
  Serial.begin(9600);
  
  tft.initR(INITR_REDTAB);

  Serial.print("Initializing SD card...");
    if (!SD.begin(SD_CS)) {
      Serial.println("failed!");
      return;
    }
    Serial.println("OK!");
    if (!card.init(SPI_HALF_SPEED, SD_CS)) {
        Serial.println("Raw SD Initialization has failed");
        while (1) {};  // Just wait, stuff exploded.
    }
    
    pinMode(select_pin, INPUT);
    digitalWrite(select_pin, HIGH);
    
    make_windows(windows);

    tft.fillScreen(tft.Color565(0x00, 0x00, 0x00)); // clear screen to black
    
    // set up initial layout
    lcd_image_draw(&background, &tft, 0, 8, 0, 8, 128, 160);
    tft.drawFastHLine(0, 8, 128, 0xFFFF); // draw scoreboard
    tft.setCursor(6, 0);
    tft.setTextColor(0xFFFF);
    tft.print("Score: ");
    tft.setCursor(42, 0);
    tft.print("0");
    tft.setCursor(79, 0);
    tft.print("Lives:");
    tft.setCursor(115, 0);
    tft.print("3");
    // break the windows!
    break_windows(windows);

    // initialize felix:
    felix_pos.x = 2;
    felix_pos.y = 2;
    // initialize ralph
    ralph_pos.x = 2;

    draw_ralph(ralph_pos);
    draw_felix(felix_pos);

    ralph_stop = millis()/1000;
}

void loop() {
  if (!game_over && !won) {
  int jy_x = map(analogRead(jy_x_pin), 0, 1023, -10, 10);
  int jy_y = map(analogRead(jy_y_pin), 0, 1023, -10, 10);
    
  if ((x_0 != jy_x) || (y_0 != jy_y)) {
    
    if ((felix_pos.x + jy_to_grid(jy_x) >= 0) && (felix_pos.x + jy_to_grid(jy_x) <= 4) && (felix_pos.y + jy_to_grid(jy_y) >= 0) && (felix_pos.y + jy_to_grid(jy_y) <= 2)) { // check if felix will go beyond boundary
      
      redraw_backgrnd(); // redraw background image
      if (windows[felix_pos.y][felix_pos.x].broken) { // watch for this in debugging.. 
	if ((felix_pos.x == 2) && (felix_pos.y > 0)) {
	  if (felix_pos.y == 1) {
	    lcd_image_draw(&broken_overhang, &tft, 0, 0, windows[felix_pos.y][felix_pos.x].x, windows[felix_pos.y][felix_pos.x].y, 3, 4); // draw broken overhang
	  } else {
	    lcd_image_draw(&broken_door, &tft, 0, 0, windows[felix_pos.y][felix_pos.x].x, windows[felix_pos.y][felix_pos.x].y, 4, 19); // draw broken door
	  }
	} else {
	  draw_bkn_win(); // draw reg broken window
	}
      }
      felix_pos.x += jy_to_grid(jy_x); // change felix' position
      felix_pos.y += jy_to_grid(jy_y);
    }
    draw_felix(felix_pos); // redraw felix
    delay(100);
  }
  if (!digitalRead(select_pin)) { // check if felix fixing window
    if (windows[felix_pos.y][felix_pos.x].broken) { // check if window is broken
      windows[felix_pos.y][felix_pos.x].broken = 0; // fix it
      change_score();
    }
  }
  if (current_score == 1500) {
    won = true;
  }
  ralph_break = (millis()/1000) - ralph_stop;
  if (ralph_break >= 4) { // ralph attacks felix every 4 seconds
    attack_felix();
  }
  } else if(game_over) {
    tft.fillScreen(tft.Color565(0x00, 0x00, 0x00)); // clear screen to black
    tft.setCursor(41, 70);
    tft.setTextColor(0xF800);
    tft.println("Game Over");
  } else {
    tft.fillScreen(tft.Color565(0x00, 0x00, 0x00)); // clear screen to black
    tft.setCursor(41, 70);
    tft.setTextColor(0x07E0);
    tft.println("You Won!");
  }
}
