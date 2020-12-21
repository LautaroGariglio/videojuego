class Personaje{
  float grav,vel;
  PImage[] img;
  int pos;
  boolean dir , salto, arriba;
  int cantSalto;
  
  Oso Osito;
  Personaje(){
  posicion = new PVector(50, 400);
  Osito = new Oso();
  grav = 10;
  pos = 0;
  dir = true;
  vel = 5;
  salto = true;
  img = new PImage[18];
  img[0] = loadImage("Parado.png");
  img[1] = loadImage("camina 1.png");  
  img[2] = loadImage("camina 2.png");
  img[3] = loadImage("camina 3.png");    
  img[4] = loadImage("camina 4.png");    
  img[5] = loadImage("camina 5.png");    
  img[6] = loadImage("camina 6.png");    
  img[7] = loadImage("camina 7.png");    
  img[8] = loadImage("camina 8.png");    
  img[9] = loadImage("ParadoI.png");    
  img[10] = loadImage("atras1.png");    
  img[11] = loadImage("atras2.png");    
  img[12] = loadImage("atras3.png");
  img[13] = loadImage("atras4.png");
  img[14] = loadImage("atras5.png");
  img[15] = loadImage("atras6.png");
  img[16] = loadImage("atras7.png");
  img[17] = loadImage("atras8.png");   
  }
  void mostrar(){
    image(img[pos], posicion.x , posicion.y , 100 , 115);
  }
  void mover(int avanza){
    if( posicion.y+115 < 600 && !arriba){
      posicion.y+= grav;
      if(dir)
        pos = 0;
      else
        pos = 0;
      salto = false;
      cantSalto = (int)posicion.y -150;
    }
    if(avanza != 0){
      if(avanza == 1 && !salto){
        arriba = true;
        salto = true;
      }
      if(avanza == 2){
        posicion.x += vel;
        pos++;
        dir = true;
        if(pos > 8)
          pos = 1;
      }
      if(avanza == 3){
        posicion.x -= vel; 
        pos++;
        dir = false;
        if(pos > 17)
          pos=10;
        if(pos < 9)
          pos = 10;  
      }
      }
      if(arriba){
        posicion.y -= grav;
        if(dir)
          pos = 3;
        else 
          pos = 11;
        if(posicion.y <= cantSalto || posicion.y < 0)
          arriba = false;
      }  
      else if(avanza == 0){
       if(salto){
        if(dir)
         pos = 4;
        else 
         pos = 12;
       }
       else{
        if(dir)
         pos = 0;
       else 
         pos = 9;
       }
     }
  }
  void escape(){
    if (posicion.x > width)
      Estado = "Victory";
    }

}
