class Botones{
  int Botons = 3;
  PImage Marco;
  String [] txtBoton = new String [Botons];
  int xnormal1, xnormal2, ynormal, tx, ty;
Botones(){
  Marco = loadImage("Boton.jpg");
  txtBoton[0] = "Jugar";
  txtBoton[1] = "Salir";
  txtBoton[2] = "Menu";
  tx = width /  5; // tamaño del boton
  ty = height / 9; //  tamaño del boton
  xnormal1 = width /4 + width / 2 ;//posicion de boton
  xnormal2 = width / 4 ;//posicion de boton//tamaño de boton
  ynormal = height / 3 + height / 2;//posicion de boton
}
void mostrarBotonD(int index, int posx, int posy) {
  this.xnormal1 = posx;
  this.ynormal = posy;
  pushStyle();
  fill(0);
  textAlign(CENTER);
  textSize(width / 38);
  image(Marco, xnormal1, ynormal, tx, ty);
  text(txtBoton[index], xnormal1 , ynormal + ynormal / 15, tx, ty);
  popStyle();
}
void mostrarBotonI(int index, int posx, int posy){
  this.xnormal2 = posx;
  this.ynormal = posy;
  pushStyle();
  fill(0);
  textAlign(CENTER);  
  textSize(width / 38);
  image(Marco, xnormal2, ynormal, tx,ty);
  text(txtBoton[index],xnormal2,ynormal  + ynormal / 15,tx,ty);
  popStyle();
}
void clickBotonD(String Cambio){
  if ((mouseX > xnormal1) && (mouseX < xnormal1 + tx) && (mouseY > ynormal) && (mouseY < ynormal + ty)) {
    Estado = Cambio; 
}
}
void clickBotonI(String Cambio) {
  if ((mouseX > xnormal2) && (mouseX < xnormal2 + tx) && (mouseY > ynormal) && (mouseY < ynormal + ty)) {
    Estado = Cambio; 
}
}
}
