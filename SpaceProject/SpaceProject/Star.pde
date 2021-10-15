// Creates a Class Star for the stars in the background of the sketch.

class Star {
  float x;             // X Pos of the stars
  float y;             // Y Pos of the stars
  color colour;        // Colour of stars.

  // Constructor
  Star() {
    x = random(0, width);
    y = random(0, height);
    colour = color(255);
  }

  void draw()
  {
    noStroke();
    fill(colour);
    ellipse(x, y, (random(1, 3)), (random(1, 3)));
  }
}
