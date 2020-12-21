PVector posicion;
int mov;
String Estado;

Estados juego;
void setup(){
  size(800, 600);
  frameRate(30);
  mov = 0;
  juego = new Estados();
  
}
void draw(){   
  if(keyPressed){
    if(keyCode == UP)
      mov = 1;    
    if(keyCode == RIGHT)
      mov = 2;    
    if(keyCode == LEFT)
      mov = 3;
    }
  else
  mov = 0;
  juego.Jugar();
}
void mousePressed(){
  juego.Clickeado();
}
