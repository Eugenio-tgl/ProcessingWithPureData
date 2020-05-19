class Flujo{
  boolean mov1 = true;
  color c, p;
  int e = 70;
  
  void PantallaInicio(){
    
    if(mov1)
    {
      //baile.loop();
      mov1 = false;
    }
    
    if(caso1)
    Reproducir1();
    
    if(caso2)
    Reproducir2();
    
    if(caso3)
    Reproducir3();
    
    if(caso4)
    Reproducir4();
    
  }
  
  void Reproducir1(){
    for(int i = 425; i <= width-220; i+=7)
        for(int j= 0; j <= height; j+=7)
        {
          c = color (baile.get(i, j));
          if(red(c) > 20 && blue(c) > 20 && green(c) > 20)
          {
              
            p = color(r, g, b);
            
            stroke(p);
            strokeWeight(3);
            noFill();
            //line(i, j, i + random(-10, 10), j + random(0, 10));
            bezier(i-e,j, i-e+random(-10,10), j+random(-10,10), i-e+random(-10,10), j+random(-10,10), i-e+ random(15), j + random (15));
    
          }
        }
  }
  
  void Reproducir2(){
    for(int i = 400; i <= width-200; i+=7)
        for(int j= 0; j <= height; j+=7)
        {
          c = color (baile.get(i, j));
          
          if(red(c) > 20 && blue(c) > 20 && green(c) > 20)
          {
            p = color(r, g, b);
            
            stroke(p);
            strokeWeight(3);
            noFill();
            push();
            translate(-220-e,0);
            bezier(i-e,j, i-e+random(-10,10), j+random(-10,10), i-e+random(-10,10), j+random(-10,10), i-e+ random(15), j + random (15));
            translate(540-e,0);
            bezier(i-e,j, i-e+random(-10,10), j+random(-10,10), i-e+random(-10,10), j+random(-10,10), i-e+ random(15), j + random (15));
            pop();
          }
        }
  }
  
  void Reproducir3(){
    for(int i = 400; i <= width-200; i+=7)
        for(int j= 0; j <= height; j+=7)
        {
          c = color (baile.get(i, j));
          
          if(red(c) > 20 && blue(c) > 20 && green(c) > 20)
          {
            p = color(r, g, b);
            
            stroke(p);
            strokeWeight(3);
            noFill();
            
            bezier(i-e,j, i-e+random(-10,10), j+random(-10,10), i-e+random(-10,10), j+random(-10,10), i-e+ random(15), j + random (15));
            push();
            translate(-220-e,0);
            bezier(i-e,j, i-e+random(-10,10), j+random(-10,10), i-e+random(-10,10), j+random(-10,10), i-e+ random(15), j + random (15));
            translate(540,0);
            bezier(i-e,j, i-e+random(-10,10), j+random(-10,10), i-e+random(-10,10), j+random(-10,10), i-e+ random(15), j + random (15));
            pop();
        }
        }
  }
  
  void Reproducir4(){
    for(int i = 400; i <= width-200; i+= 7)
        for(int j= 0; j <= height; j+=7)
        {
          c = color (baile.get(i, j));
          if(red(c) > 20 && blue(c) > 20 && green(c) > 20)
          {
            p = color(r, g, b);
            
            stroke(p);
            strokeWeight(1);
            noFill();
            
             bezier((i-e)/2, j/2, (i-e)/2+random(-10,10), j/2+random(-10,10), (i-e)/2+random(-10,10), j/2+random(-10,10), (i-e)/2+ random(-5,5), j/2 + random (10));
             push();
             translate(540,0);
             bezier((i-e)/2, j/2, (i-e)/2+random(-10,10), j/2+random(-10,10), (i-e)/2+random(-10,10), j/2+random(-10,10), (i-e)/2+ random(-5,5), j/2 + random (10));
             translate(0, 360);
             bezier((i-e)/2, j/2, (i-e)/2+random(-10,10), j/2+random(-10,10), (i-e)/2+random(-10,10), j/2+random(-10,10), (i-e)/2+ random(-5,5), j/2 + random (10));
             translate(-540,0);
             bezier((i-e)/2, j/2, (i-e)/2+random(-10,10), j/2+random(-10,10), (i-e)/2+random(-10,10), j/2+random(-10,10), (i-e)/2+ random(-5,5), j/2 + random (10));
             pop();
          }
        }
      }
}
