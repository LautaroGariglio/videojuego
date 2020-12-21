class Estalactita{
  int x, y, ancho, alto;
  int caida, sprite; 
  PImage[] Estala;
  boolean cae = false;
  Estalactita(){
  x = 600;
  y = 0;
  ancho = 30;
  alto = 100;
  sprite = 0;
  Estala = new PImage[3];
  Estala[0] = loadImage("Estalactita.png");
  Estala[1] = loadImage("Estalactita1.png");
  Estala[2] = loadImage("Estalactita2.png");
  }
  void mostrar(){
    image(Estala[sprite], x , y , ancho, alto);
  }
  void accion(){
    if(posicion.x >= x - 160 && !cae){
      sprite++;
      if(sprite > 2)
        sprite = 0;
    }
  }
  void caida(){
    if(posicion.x >= x-100){  
      sprite = 0;
      cae = true;
      if(y > height)
        cae = false;
  }
  if(cae)
    y += 20;
  }
  void colisionEs(){
    if(cae){
    if(posicion.x >= 600  && posicion.x <= 600 + ancho){
      Estado = "Defeat";
      println("E");
    }
    }
  }
}
