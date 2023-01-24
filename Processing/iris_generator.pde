int splits = 5000;
int counter;
float[] arrayAngle = new float [splits];
float[] x = new float [splits];
float[] y = new float [splits];
float[] changeX = new float [splits];
float[] changeY = new float [splits];
float[] r = new float [splits];
float[] roy = new float [splits];
float[] gee = new float [splits];
float[] biv = new float [splits];

void setup() {
  size(1000, 1000);

  //background(255, 227, 163);
  background(78, 105, 128);
  //background(122, 121, 89);

  counter = 1;

  for (int i = 0; i < splits; i += 1) {
    arrayAngle[i] = int(random(0, 1080));
    changeX[i] = random(.1, .3);
    changeY[i] = random(.1, .3);
    r[i] = 1;
    roy[i] = 0;
    gee[i] = 0;
    biv[i] = 0;
  }
  stroke(roy[0], gee[0], biv[0]);
  fill(0);
}

void draw() {
  translate(width/2, height/2);
  for (int i = 0; i < splits; i +=1) {
    if (counter > 300) {
      if (counter % 150 == 0) {
        changeX[i] += random(-.2, .2);
        changeY[i] += random(-.2, .2);
        roy[i] = random(0, 255);
        gee[i] = random(0, 255);
        biv[i] = random(0, 255);
        stroke(roy[i], gee[i], biv[i]);
        r[i] *= .8;
      }
    }
    if (counter > 401) {
      if (counter % 200 == 0) {
        changeX[i] += random(-.2, .2);
        changeY[i] += random(-.2, .2);
        roy[i] = random(0, 255);
        gee[i] = random(0, 255);
        biv[i] = random(0, 255);
        stroke(roy[i], gee[i], biv[i]);
        r[i] *= .8;
      }
    }
    if (counter > 800) {
      if (counter % 350 == 0) {
        changeX[i] += random(-.2, .2);
        changeY[i] += random(-.2, .2);
        roy[i] = 255;
        gee[i] = 255;
        biv[i] = 255;
        stroke(roy[i], gee[i], biv[i]);
        r[i] *= .8;
      }
    }


    ellipse(x[i], y[i], r[i], r[i]);
    x[i] += changeX[i];
    y[i] += changeY[i];
    rotate(radians(arrayAngle[i]));

    if (counter > 1055) {
      noLoop();
    }
  }

  counter += 1;
  println(counter);
}

void mouseClicked() {
  if (mouseButton == LEFT) {
    noLoop();
  }
  if (mouseButton == RIGHT) {
    loop();
  }
}
