void juegocancion() {
  if (juegocancion) {
    if (!fin) {
      background(darkliver);
      
      //generación de lineas actuadoras
      strokeWeight(3);
      stroke(beige);
      for (int i = 0; i < lineaY.length; i++) {
        line(0, lineaY[i], width, lineaY[i]);
      }
      
      //generación de actuadores
      rectMode(CENTER);
      for (int i = 0; i < actuadores.length; i++) {
        rect(actuadoresX, lineaY[i], 40, 40);
      }
      
      //cambiar color de actuadores cuando son ejecutados
      for (int i = 0; i < actuadores.length; i++) {
        if (actuadores[i]) {
          fill(plumppurple);
        } else {
          fill(purplemountain);
        }
        rect(actuadoresX, lineaY[i], 40, 40);
      }
      
      
      stroke(beige);
      switch (cancion) {
      case 1:
        //se reproduce la canción correspondiente
        if (pausa == false) {
          c1.play();
          pausa = true;
        }
        fill(plumppurple);
        for (int i = 0; i < notasc1.length; i++) {
          
          //parámetro para finalizar canción
          if (tiempoc1[i] - 3550 > actuadoresX + 4000) {
            fin = true;
          } else {
            //dibujo de las notas y desplazamiento
            ellipse(tiempoc1[i] - 3550, lineaY[notasc1[i]], 30, 30);
            tiempoc1[i] += velocidad1;
            //parámetro para pérdida de puntos
            if (tiempoc1[i] - 3550 > width - 10 && tiempoc1[i] - 3550 < width + 10) {
              puntuacion -= 50;
            }
          }
        }
        //parámetro para sumar puntos
        for (int i = 0; i < notasc1.length; i++) {
          for (int j = 0; j < actuadores.length; j++) {
            if (actuadores[j] && tiempoc1[i] - 3550 > actuadoresX - 30 && tiempoc1[i] - 3550 < actuadoresX + 30 && lineaY[j] == lineaY[notasc1[i]]) {
              puntuacion += 100;
            }
          }
        }

        break;
      case 2:
        if (pausa == false) {
          c2.play();
          pausa = true;
        }
        fill(plumppurple);
        for (int i = 0; i < notasc2.length; i++) {
          if (tiempoc2[i] - 2800 > actuadoresX + 3118) {
            fin = true;
          } else {
            ellipse(tiempoc2[i] - 2800, lineaY[notasc2[i]], 30, 30);
            tiempoc2[i] += velocidad2;
            if (tiempoc2[i] - 2800 > width - 10 && tiempoc2[i] - 2800 < width + 10) {
              puntuacion -= 50;
            }
          }
        }
        for (int i = 0; i < notasc2.length; i++) {
          for (int j = 0; j < actuadores.length; j++) {
            if (actuadores[j] && tiempoc2[i] - 2800 > actuadoresX - 30 && tiempoc2[i] - 2800 < actuadoresX + 30 && lineaY[j] == lineaY[notasc2[i]]) {
              puntuacion += 100;
            }
          }
        }
        break;
      case 3:
        if (pausa == false) {
          c3.play();
          pausa = true;
        }
        fill(plumppurple);
        for (int i = 0; i < notasc3.length; i++) {
          if (tiempoc3[i] - 2738 > actuadoresX + 3118) {
            fin = true;
          } else {
            ellipse(tiempoc3[i] - 2350, lineaY[notasc3[i]], 30, 30);
            tiempoc3[i] += velocidad3;
            if (tiempoc3[i] - 2738 > width - 10 && tiempoc3[i] - 2738 < width + 10) {
              puntuacion -= 50;
            }
          }
        }
        for (int i = 0; i < notasc3.length; i++) {
          for (int j = 0; j < actuadores.length; j++) {
            if (actuadores[j] && tiempoc3[i] - 2350 > actuadoresX - 30 && tiempoc3[i] - 2350 < actuadoresX + 30 && lineaY[j] == lineaY[notasc3[i]]) {
              puntuacion += 100;
            }
          }
        }
        break;
      }
      
      //generador de marcador de puntaje
      fill(beige, 225);
      noStroke();
      rectMode(CORNER);
      rect(width*4/5 + 20, 0, width*0.2, height);
      fill(blackcoffee);
      textSize(42);
      textAlign(CENTER);
      text(puntuacion/10, width*4/5 + 100, height/2);
      
      //parámetro para pérdida o finalización de canción
      if (puntuacion < 0) {
        gameover = true;
      } else {
        
      }
    }
  }
}
