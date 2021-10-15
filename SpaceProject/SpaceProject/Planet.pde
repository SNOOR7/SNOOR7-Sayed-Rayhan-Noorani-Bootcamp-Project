// Creates a Class Planet for the various Planets in our Solar System.

class Planet {
  float posX;
  float posY;
  boolean isSelected;

  color mercury;
  color venus;
  color earth;
  color mars;
  color jupiter;
  color saturn;
  color uranus;
  color neptune;
  color sun;

  Planet() {
    posX = width/2;
    posY = height/2;
    isSelected = true;
    mercury = color(#C18202);
    venus = color(#F5A911);
    earth = color(#0089F0);
    mars = color(#DE4802);
    jupiter = color(#C18202);
    saturn = color(#D8AB07);
    uranus = color(#87D6F2);
    neptune = color(#14BCF7);
    sun = color(#FFCD00);
  }

  void display()         // Displays the Planets of our Solar System
  {
    

    // Middle Planet thats rotating and currently selected
    if (key == 'e') {
      pushMatrix();
      colorMode(RGB, 1);
      fill(earth);
      strokeWeight(1);
      stroke(100, 100, 255);
      noStroke();
      lights();
      lightSpecular(0.25, 0.25, 0.25);
      directionalLight(0.8, 0.8, 0.8, 0.25, 0.2, 0.25);
      directionalLight(51, 102, 126, 0.25, 0.2, 0.25);
      translate(posX, posY+100, 0);
      rotateY(radians(frameCount));
      sphere(200);
      popMatrix();
    } else if (key == 'm') {
      pushMatrix();
      translate(posX, posY+100, 0);
      fill(mercury);
      noStroke();
      lights();
      lightSpecular(0.25, 0.25, 0.25);
      directionalLight(0.8, 0.8, 0.8, 0.25, 0.2, 0.25);
      directionalLight(51, 102, 126, 0.25, 0.2, 0.25);
      rotateY(radians(frameCount));
      sphere(100);
      popMatrix();
    } else if (key == 'v') {
      pushMatrix();
      translate(posX, posY+100, 0);
      fill(venus);
      noStroke();
      lights();
      lightSpecular(0.25, 0.25, 0.25);
      directionalLight(0.8, 0.8, 0.8, 0.25, 0.2, 0.25);
      directionalLight(51, 102, 126, 0.25, 0.2, 0.25);
      rotateY(radians(frameCount));
      sphere(200);
      popMatrix();
    } else if (key == 'M') {
      pushMatrix();
      translate(posX, posY+100, 0);
      fill(mars);
      noStroke();
      lights();
      lightSpecular(0.25, 0.25, 0.25);
      directionalLight(0.8, 0.8, 0.8, 0.25, 0.2, 0.25);
      directionalLight(51, 102, 126, 0.25, 0.2, 0.25);
      rotateY(radians(frameCount));
      sphere(150);
      popMatrix();
    } else if (key == 'j') {
      pushMatrix();
      translate(posX, posY+100, 0);
      fill(jupiter);
      noStroke();
      lights();
      lightSpecular(0.25, 0.25, 0.25);
      directionalLight(0.8, 0.8, 0.8, 0.25, 0.2, 0.25);
      directionalLight(51, 102, 126, 0.25, 0.2, 0.25);
      rotateY(radians(frameCount));
      sphere(225);
      popMatrix();
    } else if (key == 's') {
      pushMatrix();
      translate(posX, posY+100, 0);
      fill(saturn);
      noStroke();
      lights();
      lightSpecular(0.25, 0.25, 0.25);
      directionalLight(0.8, 0.8, 0.8, 0.25, 0.2, 0.25);
      directionalLight(51, 102, 126, 0.25, 0.2, 0.25);
      rotateY(radians(frameCount));
      sphere(200);
      popMatrix();
    } else if (key == 'u') {
      pushMatrix();
      translate(posX, posY+100, 0);
      fill(uranus);
      noStroke();
      lights();
      lightSpecular(0.25, 0.25, 0.25);
      directionalLight(0.8, 0.8, 0.8, 0.25, 0.2, 0.25);
      directionalLight(51, 102, 126, 0.25, 0.2, 0.25);
      rotateY(radians(frameCount));
      sphere(190);
      popMatrix();
    } else if (key == 'n') {
      pushMatrix();
      translate(posX, posY+100, 0);
      fill(neptune);
      noStroke();
      lights();
      lightSpecular(0.25, 0.25, 0.25);
      directionalLight(0.8, 0.8, 0.8, 0.25, 0.2, 0.25);
      directionalLight(51, 102, 126, 0.25, 0.2, 0.25);
      rotateY(radians(frameCount));
      sphere(190);
      popMatrix();
    }

    // The Sun is on the far left of the sketch and help make the lighting look more realistic
    pushMatrix();
    colorMode(RGB, 1);
    translate(posX-575, posY-270, 0);
    fill(sun);
    noStroke();
    lights();
    lightSpecular(0.5, 0.5, 0.5);
    directionalLight(0.8, 0.8, 0.8, -0.25, -0.25, 0.5);
    directionalLight(51, 102, 126, 0.25, -0.2, 0.25);
    rotateY(radians(frameCount));
    sphere(100);
    popMatrix();

    // Mercury (closest Planet to the Sun)
    pushMatrix();
    translate(posX-300, posY-300, 0);
    fill(mercury);
    noStroke();
    lights();
    lightSpecular(0.25, 0.25, 0.25);
    directionalLight(0.8, 0.8, 0.8, 0.25, 0.2, 0.25);
    directionalLight(51, 102, 126, 0.25, 0.2, 0.25);
    rotateY(radians(frameCount));
    sphere(20);
    popMatrix();

    // Venus
    pushMatrix();
    translate(posX-200, posY-300, 0);
    fill(venus);
    noStroke();
    lights();
    lightSpecular(0.25, 0.25, 0.25);
    directionalLight(0.8, 0.8, 0.8, 0.25, 0.2, 0.25);
    directionalLight(51, 102, 126, 0.25, 0.2, 0.25);
    rotateY(radians(frameCount));
    sphere(35);
    popMatrix();

    // Earth (Home Planet, in case you weren't aware)
    pushMatrix();
    fill(earth);
    stroke(100, 100, 255);
    lights();
    lightSpecular(0.25, 0.25, 0.25);
    directionalLight(0.8, 0.8, 0.8, 0.25, 0.2, 0.25);
    directionalLight(51, 102, 126, 0.25, 0.2, 0.25);
    translate(posX-50, posY-300, 0);
    rotateY(radians(frameCount));
    noStroke();
    sphere(35);
    popMatrix();

    // Mars (the Planet Elon Musk loves so much)
    pushMatrix();
    translate(posX+50, posY-300, 0);
    fill(mars);
    noStroke();
    lights();
    lightSpecular(0.25, 0.25, 0.25);
    directionalLight(0.8, 0.8, 0.8, 0.25, 0.2, 0.25);
    directionalLight(51, 102, 126, 0.25, 0.2, 0.25);
    rotateY(radians(frameCount));
    sphere(25);
    popMatrix();

    // Jupiter (The big one)
    pushMatrix();
    translate(posX+175, posY-300, 0);
    fill(jupiter);
    noStroke();
    lights();
    lightSpecular(0.25, 0.25, 0.25);
    directionalLight(0.8, 0.8, 0.8, 0.25, 0.2, 0.25);
    directionalLight(51, 102, 126, 0.25, 0.2, 0.25);
    rotateY(radians(frameCount));
    sphere(50);
    popMatrix();


    // Saturn (The Planet with the ring, but this one doesn't have one ^-^)
    pushMatrix();
    translate(posX+350, posY-300, 0);
    fill(saturn);
    noStroke();
    lights();
    lightSpecular(0.25, 0.25, 0.25);
    directionalLight(0.8, 0.8, 0.8, 0.25, 0.2, 0.25);
    directionalLight(51, 102, 126, 0.25, 0.2, 0.25);
    rotateY(radians(frameCount));
    sphere(40);
    popMatrix();


    // Uranus (...)
    pushMatrix();
    translate(posX+500, posY-300, 0);
    fill(uranus);
    noStroke();
    lights();
    lightSpecular(0.25, 0.25, 0.25);
    directionalLight(0.8, 0.8, 0.8, 0.25, 0.2, 0.25);
    directionalLight(51, 102, 126, 0.25, 0.2, 0.25);
    rotateY(radians(frameCount));
    sphere(35);
    popMatrix();

    // Neptune
    pushMatrix();
    translate(posX+650, posY-300, 0);
    fill(neptune);
    noStroke();
    lights();
    lightSpecular(0.25, 0.25, 0.25);
    directionalLight(0.8, 0.8, 0.8, 0.25, 0.2, 0.25);
    directionalLight(51, 102, 126, 0.25, 0.2, 0.25);
    rotateY(radians(frameCount));
    sphere(35);
    popMatrix();
  }
}
