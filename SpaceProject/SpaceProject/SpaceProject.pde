// VERY ROUGH VER. OF THIS PROJECT WITH MANY INEFFICIENCIES
// I HAD FUN SO I'LL IMPROVE ON THIS PROJECT LATER

float scale;

Star[] stars;
//Planet[] planets;
Planet planets;

Planet mercury;
Planet venus;
Planet earth;
Planet mars;
Planet jupiter;
Planet saturn;
Planet uranus;
Planet neptune;

void setup()
{
  frameRate(20);
  textAlign(RIGHT, RIGHT);
  textFont(createFont("Monospaced", 16));
  size(1500, 800, P3D);
  scale = 10.0;
  stars = new Star[750];
  for (int i=0; i<stars.length; i++) {
    stars[i] = new Star();
  }
  planets = new Planet();
  //planets = new Planet[8];
  //planets[0] = mercury;
  //planets[1] = venus;
  //planets[2] = earth;
  //planets[3] = mars;
  //planets[4] = jupiter;
  //planets[5] = saturn;
  //planets[6] = uranus;
  //planets[7] = neptune;
}

// Draws the stars and the planets
void draw()
{
  background(0);
  lights();
  for (int i=0; i<stars.length; i++) {
    stars[i].draw();
  }
  //for (int i = 0; i<planets.length; i++) {
  planets.display();
  //displayText();
  //planets.display();
  //}
}

/*
void displayText() {
  // Text to change between each of the Planets
  textSize(16);
  String message = "m = Mercury, v = Venus, e = Earth, M = Mars, j = Jupiter, s = Saturn, u = Uranus, n = Neptune";
  stroke(2);
  fill(255);
  text(message, width, 0);
  text(message, planets.posX+300, planets.posY, 280, 320);  // Text wraps within text box
}
*/
