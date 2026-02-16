void fin() {
  if (fin) {
    //interfaz de fin
    background(plumppurple);
    c1.stop();
    c2.stop();
    c3.stop();
    fill(beige);
    textSize(60);
    text("Tu puntuación fue de", width/2, height/2.5);
    if (puntuacion < 0) {
      text(0, width/2, height/1.8);
    } else {
      text(puntuacion/10, width/2, height/1.8);
    }
    image(bmenu, width*0.25, height*0.8, 80, 80);
    image(bregresar, width*0.75, height*0.8, 80, 80);
    if ((mouseX >= width*0.2 && mouseX <= width*0.3 && mouseY >= height*0.74 && mouseY <= height*0.85) | (mouseX >= width*0.7 && mouseX <= width*0.8 && mouseY >= height*0.74 && mouseY <= height*0.85)) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
    //boton regresar al menu principal luego de perder
    if (mouseX >= width*0.2 && mouseX <= width*0.3 && mouseY >= height*0.74 && mouseY <= height*0.85) {
      if (mousePressed && mouseButton == LEFT) {
        cursor(ARROW);
        menuprincipal = true;
        juegocancion = false;
        nocam = false;
        jugar=false;
        fin = false;
        puntuacion=0;
        gameover=false;
        pausa=false;
        reinicio = true;
        sw=false;
        //reinicio del vector tiempo a sus valores originales
        for (int i=0; i<tiempoc1.length; i++) {
          tiempoc1[i]=tiempoc1aux[i];
        }
        for (int i=0; i<tiempoc1.length; i++) {
          tiempoc2[i]=tiempoc2aux[i];
        }
        for (int i=0; i<tiempoc1.length; i++) {
          tiempoc3[i]=tiempoc3aux[i];
        }
      }
    }
    //boton de volver a intentar
    if (mouseX >= width*0.7 && mouseX <= width*0.8 && mouseY >= height*0.74 && mouseY <= height*0.85) {

      if (mousePressed && mouseButton == LEFT) {
        cursor(ARROW);
        menuprincipal = false;
        juegocancion = true;
        nocam = false;
        jugar=false;
        fin = false;
        puntuacion=0;
        gameover=false;
        pausa=false;
        reinicio = true;
        sw=false;
        for (int i=0; i<tiempoc1.length; i++) {
          tiempoc1[i]=tiempoc1aux[i];
        }
        for (int i=0; i<tiempoc1.length; i++) {
          tiempoc2[i]=tiempoc2aux[i];
        }
        for (int i=0; i<tiempoc1.length; i++) {
          tiempoc3[i]=tiempoc3aux[i];
        }
      }
    }
  }
}

void gameover() {
  if (gameover) {
    background(darkliver);
    c1.stop();
    c2.stop();
    c3.stop();
    fill(beige);
    textSize(60);
    text("GAME OVER", width/2, height/2.5);
    text("Sigue intentándolo", width/2, height/1.8);
    image(bmenu, width*0.25, height*0.8, 80, 80);
    image(bregresar, width*0.75, height*0.8, 80, 80);
    //boton regresar al menu principal luego de perder
    if ((mouseX >= width*0.2 && mouseX <= width*0.3 && mouseY >= height*0.74 && mouseY <= height*0.85) | (mouseX >= width*0.7 && mouseX <= width*0.8 && mouseY >= height*0.74 && mouseY <= height*0.85)) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
    if (mouseX >= width*0.2 && mouseX <= width*0.3 && mouseY >= height*0.74 && mouseY <= height*0.85) {
      if (mousePressed && mouseButton == LEFT) {
        cursor(ARROW);
        menuprincipal = true;
        juegocancion = false;
        nocam = false;
        jugar=false;
        fin = false;
        puntuacion=0;
        gameover=false;
        pausa=false;
        reinicio = true;
        sw=false;
        //reinicio del vector tiempo a sus valores originales
        for (int i=0; i<tiempoc1.length; i++) {
          tiempoc1[i]=tiempoc1aux[i];
        }
        for (int i=0; i<tiempoc1.length; i++) {
          tiempoc2[i]=tiempoc2aux[i];
        }
        for (int i=0; i<tiempoc1.length; i++) {
          tiempoc3[i]=tiempoc3aux[i];
        }
      }
    }
    //boton de volver a intentar
    if (mouseX >= width*0.7 && mouseX <= width*0.8 && mouseY >= height*0.74 && mouseY <= height*0.85) {
      if (mousePressed && mouseButton == LEFT) {
        cursor(ARROW);
        menuprincipal = false;
        juegocancion = true;
        nocam = false;
        jugar=false;
        fin = false;
        puntuacion=0;
        gameover=false;
        pausa=false;
        reinicio = true;
        sw=false;
        //reiniciar vectores
        for (int i=0; i<tiempoc1.length; i++) {
          tiempoc1[i]=tiempoc1aux[i];
        }
        for (int i=0; i<tiempoc1.length; i++) {
          tiempoc2[i]=tiempoc2aux[i];
        }
        for (int i=0; i<tiempoc1.length; i++) {
          tiempoc3[i]=tiempoc3aux[i];
        }
      }
    }
  }
}
