class Oso{
  int x, y, ancho, alto;
  int vel;
  PImage Bear;  
  Oso(){
    Bear = loadImage("Oso.png");    
    x = -400;
    y = 305;
    ancho = 300;
    alto = 300;
    vel = 3;

  }
  void mostrar(){
    image(Bear, x , y , ancho, alto);
  }
  void correr(){
    if (x + ancho < width)
    x += vel;
    if (x + ancho > width / 2)
    x += vel + 3 ;
  }
    void colisionOso(){
    if (x + ancho >= posicion.x)
      Estado = "Defeat";
  }
    
}
