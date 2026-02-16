void inicio() {
  if (mostrarinicio) {
    background(80, 57, 127);
    // Título y logo
    fill(246, 244, 224);
    textSize(14);
    // Animación pentagrama
    strokeCap(ROUND);
    strokeWeight(4);
    stroke(redb, greenb, blueb);
    for (int i = 0; i < lineainicio.length; i++) {
      line(0, lineainicio[i], width, lineainicio[i]);
    }
    // animacion();
     fill(151, 122, 184);
     stroke(246, 244, 224);

    for (int i = 0; i < notas1.length; i++) {
      stroke(246, 244, 224);
      ellipse(tiempo1[i] - 3550, lineainicio[notas1[i]], 30, 30);
      tiempo1[i] += velocidad;
    }
    fill(151, 122, 184);
    stroke(246, 244, 224);
    text("NordSoftware 2022", width*0.445, height*0.95);
    quad(width/2, 60, 380, 220, width/2, 395, 620, 220); // rombo
    imageMode(CENTER);
    image(logo, width/2, height/2.7, width/3.5, width/3.5); // logo
    // Botón inicio
    fill(b1, b2, b3);
    noStroke();
    ellipseMode(CENTER);
    ellipse(width/2, height*0.8, width*tamboi, width*tamboi);  // círculo del botón
    fill(redb, greenb, blueb);
    triangle(width*0.485, height*0.77, width*0.485, height*0.832, width*0.521, (height*0.77+height*0.832)/2); // triángulo, pls más chiquis
    if (mouseX >= width*0.46 && mouseX<= width*0.545 && mouseY >= height*0.722 && mouseY<=  height*0.87) {  // Límites botón
      blueb=blueb+20;
      blueb = constrain(blueb, 156, 252); // Limita el valor del color
      cursor(HAND);
      triangle(width*0.483, height*0.77, width*0.485, height*0.832, width*0.524, (height*0.77+height*0.832)/2);
      tamboi = constrain(tamboi, 0.0785, 0.079);
      tamboi=tamboi+0.005;
      if (mousePressed && mouseButton == LEFT) {
        blueb= 224;
        greenb=244;
        redb=246;
        b1=106;
        b2=79;
        b3=186;
        cursor(ARROW);
        mostrarinicio=false;
        menuprincipal=true;
        if (mouseX < (width/2)+125 & mouseX > (width/2)-125 & mouseY < (height/2)+150 & mouseY > (height/2)-150){
          time= millis();
          sw=true;  // Terminar esta validación
        }
      }
    } else {
      cursor(ARROW);
      blueb=blueb-20;
      blueb = constrain(blueb, 156, 252);
      tamboi = constrain(tamboi, 0.0785, 0.079);
      tamboi=tamboi-0.005;
    }
  }
}
