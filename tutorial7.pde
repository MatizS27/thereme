
void tutorial() {
  if (tutorial) {
    if (camtuto) {
      background(76, 67, 68); //cambio de pestana
      camtuto = false;
      rectMode(CORNERS);
      fill(80, 57, 127);
      rect(width*0.125, height*0.083, width*0.875, height*0.916, 50);
      image(tuto1, width*0.5, height*0.5, 750, 500);
    }
    fill(200);
    triangle(width*0.05, height*0.5, width*0.10, height*0.45, width*0.10, height*0.55);//flechas de cambio
    if (caimage<=1) {
      fill(76, 67, 68);
      rectMode(CORNER);
      rect(width*0.88, height*0.44, width*0.95, height*0.55);
      fill(240);
      triangle(width*0.95, height*0.5, width*0.9, height*0.45, width*0.9, height*0.55);
    }
    //imagen inicial
    if (caimage>=2) {
      fill(76, 67, 68);
      triangle(width*0.95, height*0.5, width*0.9, height*0.45, width*0.9, height*0.55);
      image(bmenu, width*0.93, height*0.5, 80, 80);
    }
    //cambio flecha izquierda
    if (mouseX >= width*0.05 && mouseX<= width*0.10 && mouseY >= height*0.45 && mouseY<=  height*0.55 && caimage>0) {
      fill(250);
      triangle(width*0.05, height*0.5, width*0.10, height*0.45, width*0.10, height*0.55);
      cursor(HAND);
      q=1;
      if (mousePressed && mouseButton == LEFT && controltuto) { //if flecha izquierda
        caimage-=1;
        controltuto = false;
        switch(caimage) { //case de cambio de info pestana
        case 0:
          image(tuto1, width*0.5, height*0.5, 750, 500);
          break;
        case 1:
          image(tuto2, width*0.5, height*0.5, 750, 500);
          break;
        case 2:
          image(tuto3, width*0.5, height*0.5, 750, 500);
          break;
        }
      } else {
        if (mousePressed == false) {
          controltuto = true; //validacion para click una vez
        }
      }
    } else {
      if (q==1 && cur==0) {
        cursor(ARROW); //cambio de cursor
        q=0;
      }
    }
    if (mouseX >= width*0.9 && mouseX<= width*0.95 && mouseY >= height*0.45 && mouseY<=  height*0.55&& caimage<3) { //if flecha derecha
      fill(250);
      if (caimage<=1) {
        triangle(width*0.95, height*0.5, width*0.9, height*0.45, width*0.9, height*0.55);
      } else {
        image(bmenu, width*0.93, height*0.5, 80, 80);
      }
      cursor(HAND);
      cur=1;
      if (mousePressed && mouseButton == LEFT && controltuto) {
        caimage+=1;
        controltuto = false;
        switch(caimage) { //caso para info con flecha derecha
        case 0:
          image(tuto1, width*0.5, height*0.5, 750, 500);
          break;
        case 1:
          image(tuto2, width*0.5, height*0.5, 750, 500);
          break;
        case 2:
          image(tuto3, width*0.5, height*0.5, 750, 500);
          break;
        case 3:
          menuprincipal();
          menuprincipal = true;
          tutorial = false;
          camtuto = true;
          caimage=0;
          break;
        }
      } else {
        if (mousePressed == false) {
          controltuto = true;
        } //validar click una vez flecha derecha
      }
    } else {
      if (cur==1 && q==0) {
        cursor(ARROW);
        cur=0; //cambio de cursor
      }
    }
  }
}
