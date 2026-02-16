PFont fuente;
PImage logo, ilogo, btutorial, btutoriali, bjugar, bjugari, bsalir, bsaliri, bhimno, bmenu, bhimnoi, bwish, bwishi, bcuc, bcuci, tuto1, tuto2, tuto3, bregresar;
int blueb=189, redb=159, greenb=132, b1= 246, b2 = 244, b3= 224, rect1a= 250, rect1b=300, rect2a=250, rect2b=300, rect3a=250, rect3b =300;
int bt1x=250, bt1y=300, bt2x=250, bt2y=300, bt3x=250, bt3y=300, contar=0, valorx1=0, valorx2=0, rectja, rectjb, rectjc;
float tamboi=0.0785;
Boolean mostrarinicio =true, menuprincipal=false, tutorial=false, controlmenu = true, jugar=false, controltuto=true, camtuto=true, animac=true, lop=true;
int[] alturas = { 120, 170, 220, 270, 320 };
int caimage=0, q=0, cur=0, lineapenta, anim=0, velocidad = 2;
int[] lineainicio = {120, 170, 220, 270, 320};
int[] notas1 = {3, 3, 2, 1, 1, 2, 3, 4, 0, 0, 4, 3, 3, 4, 4, 3, 3, 2, 1, 1, 2, 3, 4, 0, 0, 4, 3, 4, 0, 0};
int[] tiempo1 = {4000, 3875, 3750, 3625, 3500, 3375, 3250, 3125, 3000, 2875, 2750, 2625, 2500, 2375, 2250, 2125, 2000, 1875, 1750, 1625, 1500, 1375, 1250, 1125, 1000, 875, 750, 625, 500, 375};

import processing.sound.*;

SoundFile c1, c2, c3;

boolean swtuto=true;
boolean reinicio=true;
boolean nocam = false;
boolean pausa = false;
boolean fin = false;
boolean gameover = false;
boolean juegocancion = false;
boolean controlc2 = true;
boolean[] actuadores = {false, false, false, false, false, false, false, false, false, false, false, false};

int[] lineaY = {46, 92, 138, 184, 230, 276, 322, 368, 414, 460, 506, 552}; //posicion vertical de las lineas actuadoras

//notas a tocar segun la canción
int[] notasc1 = {7, 7, 6, 4, 4, 6, 7, 9, 11, 11, 9, 7, 7, 9, 9, 7, 7, 6, 4, 4, 6, 7, 9, 11, 11, 9, 7, 9, 11, 11};
int[] notasc2 = {11, 5, 4, 4, 5, 7, 9, 9, 9, 4, 4, 1, 4, 5, 7, 7, 7, 1, 1, 0, 1, 4, 5, 9, 11, 11, 9, 4, 7, 5};
int[] notasc3 = {11, 11, 11, 6, 2, 11, 11, 11, 6, 2, 6, 6, 7, 7, 9, 9, 11, 11, 11, 11, 7, 4, 11, 11, 11, 7, 4, 11, 9, 11, 1, 2, 4, 6};

//tiempo (posición horizontal) en la que se ejecutan las notas
int[] tiempoc1 = {4000, 3895, 3770, 3645, 3520, 3395, 3280, 3165, 3060, 2905, 2800, 2685, 2560, 2405, 2300, 2100, 2000, 1875, 1750, 1625, 1500, 1375, 1250, 1125, 1000, 875, 750, 625, 500, 415};
int[] tiempoc2 = {3118, 2993, 2931, 2869, 2807, 2745, 2620, 2495, 2370, 2245, 2183, 2121, 2059, 1997, 1872, 1747, 1622, 1497, 1435, 1373, 1311, 1249, 1124, 999, 937, 875, 750, 625, 550, 400};
int[] tiempoc3 = {2738, 2676, 2614, 2489, 2364, 2302, 2240, 2178, 2053, 1928, 1866, 1804, 1742, 1680, 1618, 1556, 1431, 1369, 1307, 1245, 1120, 995, 933, 871, 809, 684, 559, 497, 435, 373, 311, 249, 187, 62};
int[] tiempoc1aux = {4000, 3895, 3770, 3645, 3520, 3395, 3280, 3165, 3060, 2905, 2800, 2685, 2560, 2405, 2300, 2100, 2000, 1875, 1750, 1625, 1500, 1375, 1250, 1125, 1000, 875, 750, 625, 500, 415};
int[] tiempoc2aux = {3118, 2993, 2931, 2869, 2807, 2745, 2620, 2495, 2370, 2245, 2183, 2121, 2059, 1997, 1872, 1747, 1622, 1497, 1435, 1373, 1311, 1249, 1124, 999, 937, 875, 750, 625, 550, 400};
int[] tiempoc3aux = {2738, 2676, 2614, 2489, 2364, 2302, 2240, 2178, 2053, 1928, 1866, 1804, 1742, 1680, 1618, 1556, 1431, 1369, 1307, 1245, 1120, 995, 933, 871, 809, 684, 559, 497, 435, 373, 311, 249, 187, 62};

int actuadoresX;
int velocidad1 = 2, velocidad2 = 3, velocidad3 = 4;
int cancion; //seleccionador de canciones
int puntuacion = 0; //acumulador de puntuacion (debe ser reiniciado en cada intento o cambio de cancion)
int mode = 1; //modo de juego (1. teclado, 2. theremin)
int tutoc;

color darkliver = color(76, 67, 68);
color blackcoffee = color(60, 49, 47);
color beige = color(246, 244, 224);
color plumppurple = color(106, 79, 186);
color purplemountain = color(159, 132, 189);

void setup() {
  size(1000, 600);
  surface.setResizable(false);
  fuente= loadFont("fonts/HelveticaNeueLTStd-Bd-48.vlw");
  textFont(fuente);
  logo= loadImage("images/olgo.png");
  ilogo=loadImage("images/olguito.png");
  btutorial=loadImage("images/botontutorial.png");
  btutoriali=loadImage("images/botontutorial2.png");
  bmenu=loadImage("images/hogar3.png");
  bjugar=loadImage("images/botonjugar.png");
  bjugari=loadImage("images/botonjugar2.png");
  bsalir=loadImage("images/botonsalir.png");
  bsaliri=loadImage("images/botonsalir2.png");
  bhimno=loadImage("images/botonhimno.png");
  bhimnoi=loadImage("images/Himnoi.png");
  bwish=loadImage("images/wewish.png");
  bwishi=loadImage("images/wewishu.png");
  bcuc=loadImage("images/Lacucaracha.png");
  bcuci=loadImage("images/Lacucarachai.png");
  bregresar=loadImage("images/regresarf.png");
  tuto1=loadImage("images/tuto1.png");
  tuto2=loadImage("images/tuto2.png");
  tuto3=loadImage("images/tuto3.png");
  surface.setTitle("ThereMe");
  surface.setIcon(ilogo);
  surface.setLocation(200, 50);
  c1 = new SoundFile(this, "audio/c1.mp3");
  c2 = new SoundFile(this, "audio/c2.mp3");
  c3 = new SoundFile(this, "audio/c3.mp3");
  c1.amp(0.2);
  c2.amp(0.2);
  c3.amp(0.2);
  c1.rate(1);
  c2.rate(1);
  c3.rate(0.8);
  actuadoresX = width * 4/5;
}

void draw() {
  inicio();   // Pantalla inicial
  menuprincipal();// Menú principal
  tutorial();
  juego();
  juegocancion();
  gameover();
  fin();
  // Canciones:
  // Facil : Himno de la alegría
  // Normal: We wish you a Merry Christmass
  // Difícil: La cucaracha
}

boolean sw=false;
int time;

boolean sww=true;
void menuprincipal() {
  if (menuprincipal) {
    //archivos del menu para interfaz
    rectMode(CENTER);
    background(80, 57, 127);
    fill(252);
    fill(b1, b2, b3);
    imageMode(CENTER);
    image(btutorial, width/5, height/2, 250, 300);
    image(bjugar, width/2, height/2, 250, 300);
    image(bsalir, width*0.8, height/2, 250, 300);
    rect((width/5), height/2, rect1a, rect1b, 48);
    rect(width/2, height/2, rect2a, rect2b, 48);
    rect((width*0.8), height/2, rect3a, rect3b, 48);
    fill(255);
    textSize(60);
    textAlign(CENTER);
    text("MENÚ", width*0.5, height*0.18);
    //cursores de los botones
    if ((mouseX < (width/5)+125 & mouseX > (width/5)-125 & mouseY < (height/2)+150 & mouseY > (height/2)-150) | (mouseX < (width/2)+125 & mouseX > (width/2)-125 & mouseY < (height/2)+150 & mouseY > (height/2)-150) | (mouseX < (width*0.8)+125 & mouseX > (width*0.8)-125 & mouseY < (height/2)+150 & mouseY > (height/2)-150)) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
    // boton tutorial
    if (mouseX < (width/5)+125 & mouseX > (width/5)-125 & mouseY < (height/2)+150 & mouseY > (height/2)-150) {
      rect1a+=3;
      rect1a=constrain(rect1a, 250, 280);
      rect1b+=3;
      rect1b=constrain(rect1b, 300, 330);
      image(btutoriali, width/5, height/2, bt1x, bt1y);
      bt1x+=3;
      bt1y+=3;
      bt1x = constrain(bt1x, 250, 278);
      bt1y = constrain(bt1y, 300, 328);
      if (mousePressed && mouseButton == LEFT) {
        menuprincipal=false;
        tutorial=true;
        cursor(ARROW);
      }
    } else {
      rect1a-=3;
      rect1a=constrain(rect1a, 250, 280);
      rect1b-=3;
      rect1b=constrain(rect1b, 300, 330);
      image(btutoriali, width/5, height/2, bt1x, bt1y);
      bt1x-=3;
      bt1y-=3;
      bt1x = constrain(bt1x, 250, 278);
      bt1y = constrain(bt1y, 300, 328);
      if (bt1x==250 && bt1y == 300) {
        image(btutorial, width/5, height/2, 250, 300);
      }
    }
    //boton jugar
    if (mouseX < (width/2)+125 & mouseX > (width/2)-125 & mouseY < (height/2)+150 & mouseY > (height/2)-150) {
      rect2a+=3;
      rect2a=constrain(rect2a, 250, 280);
      rect2b+=3;
      rect2b=constrain(rect2b, 300, 330);
      image(bjugari, width/2, height/2, bt2x, bt2y);
      bt2x+=3;
      bt2y+=3;
      bt2x = constrain(bt2x, 250, 278);
      bt2y = constrain(bt2y, 300, 328);
      time = millis();
      if (mousePressed && mouseButton== LEFT && sw == false) {
        menuprincipal=false;
        jugar=true;
        cursor(ARROW);
      }
    } else {
      rect2a-=3;
      rect2a=constrain(rect2a, 250, 280);
      rect2b-=3;
      rect2b=constrain(rect2b, 300, 330);
      image(bjugari, width/2, height/2, bt2x, bt2y);
      bt2x-=3;
      bt2y-=3;
      bt2x = constrain(bt2x, 250, 278);
      bt2y = constrain(bt2y, 300, 328);
      if (bt2x==250 && bt2y == 300) {
        image(bjugar, width/2, height/2, 250, 300);
      }
    }
    //boton salir
    if (mouseX < (width*0.8)+125 & mouseX > (width*0.8)-125 & mouseY < (height/2)+150 & mouseY > (height/2)-150) {
      rect3a+=3;
      rect3a=constrain(rect3a, 250, 280);
      rect3b+=3;
      rect3b=constrain(rect3b, 300, 330);
      image(bsaliri, width*0.8, height/2, bt3x, bt3y);
      bt3x+=3;
      bt3y+=3;
      bt3x = constrain(bt3x, 250, 278);
      bt3y = constrain(bt3y, 300, 328);
      if (mousePressed && mouseButton == LEFT) {
        exit();
      }
    } else {
      rect3a-=3;
      rect3a=constrain(rect3a, 250, 280);
      rect3b-=3;
      rect3b=constrain(rect3b, 300, 330);
      image(bsaliri, width*0.8, height/2, bt3x, bt3y);
      bt3x-=3;
      bt3y-=3;
      bt3x = constrain(bt3x, 250, 278);
      bt3y = constrain(bt3y, 300, 328);
      if (bt3x==250 && bt3y == 300) {
        image(bsalir, width*0.8, height/2, 250, 300);
      }
    }
  }
}



void juego() {
  if (jugar && nocam == false) {
    //archivos multimedia para interfaz
    image(bhimno, width/5, height/2, 250, 300);
    image(bwish, width/2, height/2, 250, 300);
    image(bcuc, width*0.8, height/2, 250, 300);
    background(80, 57, 127);
    rect((width/5), height/2, rect1a, rect1b, 48);
    rect(width/2, height/2, rect2a, rect2b, 48);
    rect((width*0.8), height/2, rect3a, rect3b, 48);
    image(bmenu, width/2, height*0.9, 80, 80);
    //if para el cambio de cursor
    if ((mouseX < (width/5)+125 & mouseX > (width/5)-125 & mouseY < (height/2)+150 & mouseY > (height/2)-150) | (mouseX < (width/2)+125 & mouseX > (width/2)-125 & mouseY < (height/2)+150 & mouseY > (height/2)-150) | (mouseX < (width*0.8)+125 & mouseX > (width*0.8)-125 & mouseY < (height/2)+150 & mouseY > (height/2)-150) | (mouseX>=width*0.46 && mouseX<=width*0.54 && mouseY>=height*0.82 && mouseY<=height*0.96)) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
    //boton regresar menu principal
    if (mouseX>=width*0.46 && mouseX<=width*0.54 && mouseY>=height*0.82 && mouseY<=height*0.96) {
      if (mousePressed && mouseButton == LEFT) {
        cursor(ARROW);
        menuprincipal=true;
        jugar = false;
      }
    }
    //boton para jugar cancion himno de la alegria
    if (mouseX < (width/5)+125 & mouseX > (width/5)-125 & mouseY < (height/2)+150 & mouseY > (height/2)-150) {
      rect1a+=3;
      rect1a=constrain(rect1a, 250, 280);
      rect1b+=3;
      rect1b=constrain(rect1b, 300, 330);
      image(bhimnoi, width/5, height/2, bt1x, bt1y);
      bt1x+=3;
      bt1y+=3;
      bt1x = constrain(bt1x, 250, 278);
      bt1y = constrain(bt1y, 300, 328);
      if (mousePressed && mouseButton == LEFT && nocam == false) {
        menuprincipal = false;
        jugar = false;
        juegocancion = true;
        cancion = 1;
        cursor(ARROW);
        nocam = true;
        mousePressed = false;
      }
    } else {
      rect1a-=3;
      rect1a=constrain(rect1a, 250, 280);
      rect1b-=3;
      rect1b=constrain(rect1b, 300, 330);
      image(bhimnoi, width/5, height/2, bt1x, bt1y);
      bt1x-=3;
      bt1y-=3;
      bt1x = constrain(bt1x, 250, 278);
      bt1y = constrain(bt1y, 300, 328);
      if (bt1x==250 && bt1y == 300) {
        image(bhimno, width/5, height/2, 250, 300);
      }
    }
    //boton para jugar cancion navideña
    if (mouseX < (width/2)+125 & mouseX > (width/2)-125 & mouseY < (height/2)+150 & mouseY > (height/2)-150) {
      rect2a+=3;
      rect2a=constrain(rect2a, 250, 280);
      rect2b+=3;
      rect2b=constrain(rect2b, 300, 330);
      image(bwishi, width/2, height/2, bt2x, bt2y);
      bt2x+=3;
      bt2y+=3;
      bt2x = constrain(bt2x, 250, 278);
      bt2y = constrain(bt2y, 300, 328);
      sw=true;
      if (millis() - time >=200) {
        sw=false; //---------------------------
      }
      if (mousePressed && mouseButton== LEFT && sw == false && nocam == false) {
        menuprincipal=false;
        juegocancion = true;
        jugar = true;
        cancion =2;
        cursor(ARROW);
        // time= millis();
        sw = true;
        nocam = true;
      }
    } else {
      rect2a-=3;
      rect2a=constrain(rect2a, 250, 280);
      rect2b-=3;
      rect2b=constrain(rect2b, 300, 330);
      image(bwishi, width/2, height/2, bt2x, bt2y);
      bt2x-=3;
      bt2y-=3;
      bt2x = constrain(bt2x, 250, 278);
      bt2y = constrain(bt2y, 300, 328);
      if (bt2x==250 && bt2y == 300) {
        image(bwish, width/2, height/2, 250, 300);
      }
    }
    //boton cancion de la cucaracha
    if (mouseX < (width*0.8)+125 & mouseX > (width*0.8)-125 & mouseY < (height/2)+150 & mouseY > (height/2)-150) {
      rect3a+=3;
      rect3a=constrain(rect3a, 250, 280);
      rect3b+=3;
      rect3b=constrain(rect3b, 300, 330);
      image(bcuci, width*0.8, height/2, bt3x, bt3y);
      bt3x+=3;
      bt3y+=3;
      bt3x = constrain(bt3x, 250, 278);
      bt3y = constrain(bt3y, 300, 328);
      if (mousePressed && mouseButton == LEFT && nocam == false) {
        menuprincipal = false;
        juegocancion = true;
        cancion = 3;
        jugar = false;
        nocam = true;
        mousePressed = false;
      }
    } else {
      rect3a-=3;
      rect3a=constrain(rect3a, 250, 280);
      rect3b-=3;
      rect3b=constrain(rect3b, 300, 330);
      image(bcuci, width*0.8, height/2, bt3x, bt3y);
      bt3x-=3;
      bt3y-=3;
      bt3x = constrain(bt3x, 250, 278);
      bt3y = constrain(bt3y, 300, 328);
      if (bt3x==250 && bt3y == 300) {
        image(bcuc, width*0.8, height/2, 250, 300);
      }
    }
  }
}


void keyPressed() {
  if (mode == 1) {
    if (key == 'q') {
      actuadores[11] = true;
    }
    if (key == '2') {
      actuadores[10] = true;
    }
    if (key == 'w') {
      actuadores[9] = true;
    }
    if (key == '3') {
      actuadores[8] = true;
    }
    if (key == 'e') {
      actuadores[7] = true;
    }
    if (key == 'r') {
      actuadores[6] = true;
    }
    if (key == '5') {
      actuadores[5] = true;
    }
    if (key == 't') {
      actuadores[4] = true;
    }
    if (key == '6') {
      actuadores[3] = true;
    }
    if (key == 'y') {
      actuadores[2] = true;
    }
    if (key == '7') {
      actuadores[1] = true;
    }
    if (key == 'u') {
      actuadores[0] = true;
    }
  }
}

void keyReleased() {
  if (mode == 1) {
    if (key == 'q') {
      actuadores[11] = false;
    }
    if (key == '2') {
      actuadores[10] = false;
    }
    if (key == 'w') {
      actuadores[9] = false;
    }
    if (key == '3') {
      actuadores[8] = false;
    }
    if (key == 'e') {
      actuadores[7] = false;
    }
    if (key == 'r') {
      actuadores[6] = false;
    }
    if (key == '5') {
      actuadores[5] = false;
    }
    if (key == 't') {
      actuadores[4] = false;
    }
    if (key == '6') {
      actuadores[3] = false;
    }
    if (key == 'y') {
      actuadores[2] = false;
    }
    if (key == '7') {
      actuadores[1] = false;
    }
    if (key == 'u') {
      actuadores[0] = false;
    }
  }
}
