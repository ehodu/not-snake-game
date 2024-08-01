int x[] = {100, 90, 80, 70, 60, 50, 40, 30, 20, 10};
int y[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
float a = 0;
void setup () {
  size(800, 600);
}



void draw() {
  background(0);
  for (int i=0; i<10; i++) {
    rect(x[i], y[i], 10, 10);
  }

  if (keyPressed) {
    for (int i=9; i>0; i--) {
      x[i] = x[i-1];
      y[i] = y[i-1];
    }
    if (keyCode == 37) {
      x[0] = x[0]-10;
    } else if (keyCode == 39) {
      x[0] = x[0]+10;
    }
    if (keyCode == 38) {
      y[0] = y[0]-10;
    } else if (keyCode == 40) {
      y[0] = y[0]+10;
    }
  }
}
