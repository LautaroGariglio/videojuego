class Estados{
  Botones Boton;
  Personaje p;
  Oso o;
  Estalactita e;
  PImage Pantall;
  Estados(){
  Estado = "Minijuego";
  Boton = new Botones();
  p = new Personaje();
  o = new Oso();
  e = new Estalactita();
  Pantall = loadImage("Fondo.jpg");
}
void Jugar(){ 
  if (Estado == "Minijuego"){   
      image(Pantall, width, height, 0, 0);
      Boton.mostrarBotonD(0,width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(1,width / 6 ,width / 2 - width / 10);  
 }
      else if (Estado == "Playing"){ 
      image(Pantall, width, height, 0, 0);
      p.mover(mov);
      o.correr();
      e.accion();
      e.caida();
      p.mostrar();
      o.mostrar();
      e.mostrar();
      o.colisionOso();
      e.colisionEs();
   }
      else if (Estado == "Victory"){        
      image(Pantall, width, height, 0, 0);
      pushStyle();
      textAlign(CENTER);
      fill(255);
      text("¡¡ESCAPASTE!!", width/2, height/2- width / 5);
      popStyle(); 
      Boton.mostrarBotonD(0,width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(1,width / 6 ,width / 2 - width / 10);
   }
      else if (Estado == "Defeat"){   
      image(Pantall, width, height, 0, 0);
      pushStyle();
      textAlign(CENTER);
      fill(255);
      text("¡¡PERDISTE!!", width/2, height/2- width / 5);
      popStyle();
      Boton.mostrarBotonD(0,width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(1,width / 6 ,width / 2 - width / 10);
   }
    else if(Estado == "Salir"){ //28
      exit();
   } 
}
void Clickeado(){
  if (Estado == "Minijuego") {
    Boton.clickBotonD("Playing"); 
    Boton.clickBotonI("Salir");
  }
  else if (Estado == "Victory") {
    Boton.clickBotonD("Minijuego"); 
    Boton.clickBotonI("Salir");
  }
  if (Estado == "Defeat") {
    Boton.clickBotonD("Minijuego"); 
    Boton.clickBotonI("Salir");
  }
}
  
}
