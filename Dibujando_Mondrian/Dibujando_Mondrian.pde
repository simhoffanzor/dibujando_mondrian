//VARIABLES a utilizar:

//Fuentes:
  PFont fuentesaludo;
  PFont fuentesubtitulo;
  PFont fuenteopciones;
  
//Para editar fuentes:
  int fontsize = 15;
  int espacio = 25;
  
//Textos:
  String saludo = "¡Bienvenido, artista!";
  String subtitulo = "Este programa será tu lienzo. Con tu pincel podrás...";
  String colores = "...cambiar de color a rojo (r), azul (b), amarillo (y),";
  String coloresdos = "negro (n), goma (w) o volver a empezar (0).";
  String size = "...cambiar de tamaño con las teclas + (más) y - (menos)";
  String sizedos = "y la forma (click izq. para cuadrados, der. para círculos).";
  String guardar = "...guardar tu cuadro en formato jpg (g).";
  String guardardos = "¡Cuidado! Cambiale el nombre antes de empezar otro.";
  String mostrar = "...ver un ejemplo (m) o ver obras de Mondrian";
  String mostrardos = "con los números del 1 al 3.";
  String advertencia = "No olvides anotar (¡o memorizar!) estos controles antes de empezar.";
  String advertenciados = "Luego puedes apretar el número 0 para comenzar, ¡y a dibujar con tu mouse!";
  
//Para los títulos iniciales:
  int anchoopciones = 500;
  int altoopciones = 100;
  
//Pincel:
  float pordefecto = 15;
  int red = 0;
  int blue = 0;
  int green = 0;
  int trans = 0; 

//Muestras de Mondrian:
  PImage mondrianuno;
  PImage mondriandos;
  PImage mondriantres;

//PROGRAMA DE ARRANQUE (Pantalla principal):

void setup(){
  size(1200,650); 
  background(0);
  frameRate(500);
  noStroke();
  textAlign(CENTER);
  
//Cuadrícula en el background:
  int i = 0;
  while (i<=1200){
    stroke(#332E64, 85);
    line(0, i, width, i);
    line(i, 0, i, height);
    i=i+25;
    }

//MONDI:
  strokeWeight(4);
  stroke(255);
    
    //Cabeza:
      fill(0);
      rect(50, 55, 90, 90);
      fill(#32369B);
      rect(50, 120, 90, 25);
      fill(#CE231D);
      rect(50, 85, 50, 35);
      fill(#FCFC14);
      rect(100, 55, 40, 30);
      //Sonrisa:
        line(100, 55, 100, 130);
        line(80, 135, 120, 135);
        line(77, 132, 80, 135);
        line(120, 135, 123, 132);
      //Ojos:
        fill(255);
        rect(70, 100, 10, 10);
        rect(120, 100, 10, 10);
        //Pupilas:
        noStroke();
        fill(0);
        rect(71, 101, 9, 9);
        rect(121, 101, 9, 9);
      //Cuello:
        stroke(255);
        fill(0);
        rect(90, 145, 20,15);
    
    //Cuerpo:
      stroke(255);
      fill(0);
      rect(60, 160, 70, 70);
      fill(#32369B);
      rect(60, 160, 35, 25);  
      fill(255);
      rect(60, 185, 70, 3);
      fill(#FCFC14);
      rect(95, 185, 35, 45);
      strokeWeight(2);
      line(90, 185, 90, 230); 
      line(85, 185, 85, 230);
      fill(255);
      rect(85, 220, 15, 10);
      fill(#CE231D);
      rect(60, 205, 25, 15);
    
    //Brazos:
      //Izquierdo (derecho a mi vista):
      strokeWeight(4);
      fill(255);
      rect(130, 185, 30, 3);
      quad(160, 185, 180, 160, 183, 160, 163, 187);
        //Mano:
        line(175, 142, 163, 135);
        line(185, 130, 188, 120);
        line(195, 140, 205, 130);
        fill(#32369B);
        quad(170, 150, 180, 130, 200, 140, 190, 162);
      //Derecho (izquierdo a mi vista:
      strokeWeight(1);
      fill(0);
      rect(40, 185, 20, 5);
      quad(40, 190, 22, 150, 28, 150, 40, 182);
        //Mano:
        strokeWeight(2);
        line(14, 147, 6, 145);
        line(17, 128, 15, 118);
        line(28, 128, 30, 118);
        fill(#32369B);
        quad(12, 130, 32, 128, 35, 152, 14, 150);
    
    //Piernas:
      //Izquierda (derecha a mi vista):
        strokeWeight(4);
        fill(255);
        rect(115, 230, 5, 25);
        //Pie:
        fill(#CE231D);
        rect(115, 250, 25, 13);
      //Derecha (izquierda a mi vista):  
        rect(75, 230, 2, 25);
        //Pie:
        fill(0);
        rect(50, 250, 27, 13);
        
rectMode(CENTER);
noStroke();
//Saludo:
  //Fondo:
  fill(0,150,0); 
  rect(width/2, 100, 700, 100);  
  //Letra:
  fill(255); 
  fuentesaludo = loadFont("castellar.vlw");
  textFont(fuentesaludo, 65);
  text(saludo, width/2, 120);
  
//Subtítulo:
  fill(210);
  fuentesubtitulo = loadFont("consolas.vlw");
  textFont(fuentesubtitulo, fontsize);
  text(subtitulo, width/2, 200);

//Opciones:
  //Letra:
  fuenteopciones = loadFont("consolas.vlw");
  textFont(fuenteopciones, fontsize); 
  
  //...Cambio de color (rojo):
  fill(#CE231D);
  rect(width/4, height/2, anchoopciones, altoopciones);
  fill(255);
  text(colores, width/4, height/2);
  text(coloresdos, width/4, height/2+espacio);

  //...Cambio de tamaño y forma (amarillo):
  fill(#FCFC14);
  rect(width/4, height-height/4, anchoopciones, altoopciones);
  fill(0);
  text(size, width/4, height-height/4);
  text(sizedos, width/4, height-height/4+espacio);

  //...Guardar como JPG (blanco):
  fill(255);
  rect(width-width/4, height-height/4, anchoopciones, altoopciones);
  fill(0);
  text(guardar, width-width/4, height-height/4);
  text(guardardos, width-width/4, height-height/4+espacio); 
  
  //...Mostrar un ejemplo (azul):
  fill(#32369B);
  rect(width-width/4, height/2, anchoopciones, altoopciones);
  fill(255);
  text(mostrar, width-width/4, height/2);
  text(mostrardos, width-width/4, height/2+espacio);

//Mensaje inferior:
  fill(210);
  textFont(fuentesubtitulo, fontsize+5);
  text(advertencia, width/2, height-height/4+altoopciones);
  textFont(fuentesubtitulo, fontsize);
  text(advertenciados, width/2, height-height/4+altoopciones+espacio+5);

//Imprimir en consola:
  println("COLOR:  Rojo: r  ||  Amarillo: y  ||  Azul: b  ||  Blanco: w  ||  Negro: n");
  println("TAMAÑO:  Aumentar: +  ||  Disminuir: -");
  println("GUARDAR: g");
  println("MOSTRAR EJEMPLOS: m, 1, 2 y 3");

}

//FUNCIÓN DE DIBUJO:

void draw(){
  if (keyPressed == true){ 

//Si apretamos "m":  
  if (key=='m'){
  background(255);
   
  //Cuadrado...
  noStroke();
  //...rojo:
  fill(random(75,250), 0, 0);
  rect(350,215,300,225);
  //...azul:
  fill(0, 0, random(75,250));
  rect(950, 440, 300, 225);
  //...amarillo:
  fill(255, random(75,250), 0);
  rect(350, 665, 300, 225);
  
  //Líneas horizontales:
  for (int i=100; i<=height; i=i+225){
    strokeWeight(10);
    stroke(0);
    line(0, i, width, i);
  }

  //Líneas verticales:
  for (int i=width/6; i<=width; i=i+300){
    strokeWeight(10);
    stroke(0);
    line(i, 0, i, height);
  }  
  
  //Marco:
  for (int bor=0; bor<=width; bor=bor+1){
    stroke(0);
    line(bor, 0, bor, 20);
    line(bor, height-20, bor, height);
    line(0, bor, 20, bor);
    line(width-20, bor, width, bor);
  }
  //"Tornillos" del marco:
  int esq = int (random(4));
  int d = 10;
  
  switch(esq){
    //Tornillos de color azul:
    case 0:
      strokeWeight(1);
      stroke(135);   
      fill(0, 0, 255);
      ellipse (d, d, d+3, d+3);
      fill(135);
      ellipse (d, d, 3, 3);
      fill(0, 0, 255);
      ellipse (width-d, d, d+3, d+3);
      fill(135);
      ellipse (width-d, d, 3, 3);    
      fill(0, 0, 255);
      ellipse (width-d, height-d, d+3, d+3);
      fill(135);
      ellipse (width-d, height-d, 3, 3);
      fill(0, 0, 255);
      ellipse (d, height-d, d+3, d+3);
      fill(135);
      ellipse (d, height-d, 3, 3);     
    break;
      
    //Tornillos de color rojo:
    case 1:
      strokeWeight(1);
      stroke(135);
      fill(255, 0, 0);
      ellipse (d, d, d+3, d+3);
      fill(135);
      ellipse (d, d, 3, 3);   
      fill(255, 0, 0);
      ellipse (width-d, d, d+3, d+3);
      fill(135);
      ellipse (width-d, d, 3, 3);    
      fill(255, 0, 0);
      ellipse (width-d, height-d, d+3, d+3);
      fill(135);
      ellipse (width-d, height-d, 3, 3);     
      fill(255, 0, 0);
      ellipse (d, height-d, d+3, d+3);
      fill(135);
      ellipse (d, height-d, 3, 3);
    break;

    //Tornillos de amarillo:
    case 2:
      strokeWeight(1);
      stroke(135);
      fill(255, 255, 0);
      ellipse (d, d, d+3, d+3);
      fill(135);
      ellipse (d, d, 3, 3);
      fill(255, 255, 0);
      ellipse (width-d, d, d+3, d+3);
      fill(135);
      ellipse (width-d, d, 3, 3);
      fill(255, 255, 0);
      ellipse (width-d, height-d, d+3, d+3);
      fill(135);
      ellipse (width-d, height-d, 3, 3);
      fill(255, 255, 0);
      ellipse (d, height-d, d+3, d+3);
      fill(135);
      ellipse (d, height-d, 3, 3);
    break;

    //Tornillos de blanco:
    case 3:
      strokeWeight(1);
      stroke(135);   
      fill(255);
      ellipse (d, d, d+3, d+3);
      fill(135);
      ellipse (d, d, 3, 3);   
      fill(255);
      ellipse (width-d, d, d+3, d+3);
      fill(135);
      ellipse (width-d, d, 3, 3);
      fill(255);
      ellipse (width-d, height-d, d+3, d+3);
      fill(135);
      ellipse (width-d, height-d, 3, 3);    
      fill(255);
      ellipse (d, height-d, d+3, d+3);
      fill(135);
      ellipse (d, height-d, 3, 3);
    break;
    } //...cierra Switch. 
  } //...cierra "if (key=='m')

//Si apretamos '0':
  if (key=='0'){
    background(255);
  
  //Marco:
  for (int bor=0; bor<=width; bor=bor+1){
    stroke(0);
    line(bor, 0, bor, 20);
    line(bor, height-20, bor, height);
    line(0, bor, 20, bor);
    line(width-20, bor, width, bor);
  }
  //"Tornillos" del marco:
  int esq = int (random(4));
  int d = 10;
  
  switch(esq){
    //Tornillos de color azul:
    case 0:
      strokeWeight(1);
      stroke(135);   
      fill(0, 0, 255);
      ellipse (d, d, d+3, d+3);
      fill(135);
      ellipse (d, d, 3, 3);
      fill(0, 0, 255);
      ellipse (width-d, d, d+3, d+3);
      fill(135);
      ellipse (width-d, d, 3, 3);    
      fill(0, 0, 255);
      ellipse (width-d, height-d, d+3, d+3);
      fill(135);
      ellipse (width-d, height-d, 3, 3);
      fill(0, 0, 255);
      ellipse (d, height-d, d+3, d+3);
      fill(135);
      ellipse (d, height-d, 3, 3);     
    break;
      
    //Tornillos de color rojo:
    case 1:
      strokeWeight(1);
      stroke(135);
      fill(255, 0, 0);
      ellipse (d, d, d+3, d+3);
      fill(135);
      ellipse (d, d, 3, 3);   
      fill(255, 0, 0);
      ellipse (width-d, d, d+3, d+3);
      fill(135);
      ellipse (width-d, d, 3, 3);    
      fill(255, 0, 0);
      ellipse (width-d, height-d, d+3, d+3);
      fill(135);
      ellipse (width-d, height-d, 3, 3);     
      fill(255, 0, 0);
      ellipse (d, height-d, d+3, d+3);
      fill(135);
      ellipse (d, height-d, 3, 3);
    break;

    //Tornillos de amarillo:
    case 2:
      strokeWeight(1);
      stroke(135);
      fill(255, 255, 0);
      ellipse (d, d, d+3, d+3);
      fill(135);
      ellipse (d, d, 3, 3);
      fill(255, 255, 0);
      ellipse (width-d, d, d+3, d+3);
      fill(135);
      ellipse (width-d, d, 3, 3);
      fill(255, 255, 0);
      ellipse (width-d, height-d, d+3, d+3);
      fill(135);
      ellipse (width-d, height-d, 3, 3);
      fill(255, 255, 0);
      ellipse (d, height-d, d+3, d+3);
      fill(135);
      ellipse (d, height-d, 3, 3);
    break;

    //Tornillos de blanco:
    case 3:
      strokeWeight(1);
      stroke(135);   
      fill(255);
      ellipse (d, d, d+3, d+3);
      fill(135);
      ellipse (d, d, 3, 3);   
      fill(255);
      ellipse (width-d, d, d+3, d+3);
      fill(135);
      ellipse (width-d, d, 3, 3);
      fill(255);
      ellipse (width-d, height-d, d+3, d+3);
      fill(135);
      ellipse (width-d, height-d, 3, 3);    
      fill(255);
      ellipse (d, height-d, d+3, d+3);
      fill(135);
      ellipse (d, height-d, 3, 3);
    break;
    } //...cierra Switch. 
  } //cierra el if (key=='0')

//IMÁGENES DE MONDRIAN:

  if (key=='1'){
    background(255);
    mondrianuno= loadImage("Mondrian 1.jpg");
    image(mondrianuno, 450, 150);
    }
  if (key=='2'){
    background(255);
    mondriandos= loadImage("Mondrian 2.jpg");
    image(mondriandos, 225, 0);
    }
  if (key=='3'){
    background(255);
    mondriantres= loadImage("Mondrian 3.jpg");
    image(mondriantres, 250, 0);
    }
  } //cierra el keyPressed

//Pincel:
if (mousePressed && (mouseButton==LEFT)){ 
  noStroke();
  fill(red, green, blue, trans);
  rect(mouseX,mouseY, pordefecto, pordefecto);
  } 

else if (mousePressed && (mouseButton==RIGHT)){
  noStroke();
  fill(red, green, blue, trans);
  ellipse(mouseX,mouseY, pordefecto, pordefecto);
  }

if (mouseY <= height && mouseX <= width){
    cursor (HAND);
    }
} 

//SI PRESIONÉ X TECLA:

void keyTyped(){
  //Cambio de colores:
    //Pincel a AZUL:
    if (key== 'b'){
      red = 0;
      green = 0;
      blue = 255;
      trans = 100;
      } 
    //Pincel a ROJO:
    else if (key== 'r'){
      red = 255;
      green = 0;
      blue = 0;
      trans = 100;
      } 
    //Pincel a BLANCO:
    else if (key== 'w'){
      red = 255;
      green = 255;
      blue = 255;
      trans = 100;
      }
    //Pincel a NEGRO:  
    else if (key== 'n'){
      red = 0;
      green = 0;
      blue = 0;
      trans = 100;
      }
    //Pincel a AMARILLO:  
    else if (key== 'y'){
      red = 255;
      green = 255;
      blue = 0;
      trans = 100;
      }
      
  //Cambio de tamaños:
    //Aumentar:
    if (key== '+' ){
      pordefecto = pordefecto+0.5;
      }
    //Disminuir:
    else if (key == '-'){
      pordefecto = pordefecto-0.5;
      }
  //Guardar como JPG:
  if (key== 'g'){
    save("(Renombrar este archivo).jpg");
    }
    
} //cierra "void keyTyped()"
