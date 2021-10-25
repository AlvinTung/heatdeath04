int _num = 170;
float angle = 0;
Circle[] _circleArr = {};
Monolith m1;
Monolith m2;
Monolith m3;
int countdown;
PImage img;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage bg;

void setup() {
   size(945, 708);
   //background(255);
   //smooth();
   //strokeWeight(1);
   //fill(150, 50);
   frameRate(10);
   float randomXPos = random(0.0, 945.0);
   float randomYPos = random(0.0, 708.0);
   float randomWidth = random(20.0, 200.0);
   float randomHeight = random(20.0, 450.0);
   int instantiate = int(random(0, 2));
   if(instantiate == 1) {
       m1 = new Monolith(randomXPos, randomYPos, randomWidth, randomHeight);
   }
   instantiate = int(random(0, 1));
   if(instantiate == 1) {
       m2 = new Monolith(randomXPos, randomYPos, randomWidth, randomHeight);
   }
   instantiate = int(random(0, 1));
   if(instantiate == 1) {
       m3 = new Monolith(randomXPos, randomYPos, randomWidth, randomHeight);
   }
   countdown = int(random(50.0, 200.0));
   img = loadImage("shape1.png");
   img1 = loadImage("shape2.png");
   img2 = loadImage("shape3.png");
   img3 = loadImage("shape4.png");
   img4 = loadImage("shape5.png");
   bg = loadImage("whitenoise2.jpg");
   drawCircles();
}

void draw() {
  clear();
  background(bg);
  for(int i = 0; i < _circleArr.length; i++) {
    Circle thisCirc = _circleArr[i];
    thisCirc.updateMe();
  }
  
  if(m1 != null) {
      m1.updateMe();
  }
  if(m2 != null) {
     m2.updateMe();
  }
  if(m3 != null) {
     m3.updateMe();
  }
  
  if(countdown == 0) {
     // m1 = null;
     // m1 = new Monolith(200, 300);
     int action = int(random(4));
     
     // replace all
     if(action == 0) {
       if(m1 != null) {
           if(m1.activated) {
               for(int i = 0; i < m1.monolith_circleArr.length; i++) {
                   m1.monolith_circleArr[i].activated = false;  
               }
               m1 = null;
           
               float randomXPos = random(0.0, 945.0);
               float randomYPos = random(0.0, 708.0);
               float randomWidth = random(20.0, 200.0);
               float randomHeight = random(20.0, 450.0);
               m1 = new Monolith(randomXPos, randomYPos, randomWidth, randomHeight);
           }
       }
       else if(m1 == null) {
         float randomXPos = random(0.0, 945.0);
         float randomYPos = random(0.0, 708.0);
         float randomWidth = random(20.0, 200.0);
         float randomHeight = random(20.0, 450.0);
         m1 = new Monolith(randomXPos, randomYPos, randomWidth, randomHeight);
       }
       if(m2 != null) {
           if(m2.activated && m2 != null) {
               for(int i = 0; i < m2.monolith_circleArr.length; i++) {
                   m2.monolith_circleArr[i].activated = false;  
               } 
               m2 = null;
           
               float randomXPos = random(0.0, 945.0);
               float randomYPos = random(0.0, 708.0);
               float randomWidth = random(20.0, 200.0);
               float randomHeight = random(20.0, 450.0);
               m2 = new Monolith(randomXPos, randomYPos, randomWidth, randomHeight);
           }
       }
       else if(m2 == null) {
           float randomXPos = random(0.0, 945.0);
           float randomYPos = random(0.0, 708.0);
           float randomWidth = random(20.0, 200.0);
           float randomHeight = random(20.0, 450.0);
           m2 = new Monolith(randomXPos, randomYPos, randomWidth, randomHeight);  
       }
       if(m3 != null) {
           if(m3.activated && m3 != null) {
               for(int i = 0; i < m3.monolith_circleArr.length; i++) {
                   m3.monolith_circleArr[i].activated = false;  
               } 
               m3 = null;
           
               float randomXPos = random(0.0, 945.0);
               float randomYPos = random(0.0, 708.0);
               float randomWidth = random(20.0, 200.0);
               float randomHeight = random(20.0, 450.0);
               m3 = new Monolith(randomXPos, randomYPos, randomWidth, randomHeight);
           }
        }
        else if(m3 == null) {
          float randomXPos = random(0.0, 945.0);
          float randomYPos = random(0.0, 708.0);
          float randomWidth = random(20.0, 200.0);
          float randomHeight = random(20.0, 450.0);
          m3 = new Monolith(randomXPos, randomYPos, randomWidth, randomHeight);
        }
     }
     // remove 1
     else if(action == 1) {
         int which = int(random(0, 3));
         
         if(which == 0) {
           if(m1 != null) {
               if(m1.activated) {
                   for(int i = 0; i < m1.monolith_circleArr.length; i++) {
                       m1.monolith_circleArr[i].activated = false;  
                   }
                   m1 = null;
                }
           }
         }
         if(which == 1) {
           if(m2 != null) {
               if(m2.activated) {
                   for(int i = 0; i < m2.monolith_circleArr.length; i++) {
                       m2.monolith_circleArr[i].activated = false;  
                   } 
                   m2 = null;
               }
           }
         }
         if(which == 2) {
           if(m3 != null) {
                if(m3.activated) {
                    for(int i = 0; i < m3.monolith_circleArr.length; i++) {
                        m3.monolith_circleArr[i].activated = false;  
                    }
                    m3 = null;
                }
           }
         }
       }
       // add
       else if(action == 2) {
         if(m1 == null) {
           float randomXPos = random(0.0, 945.0);
           float randomYPos = random(0.0, 708.0);
           float randomWidth = random(20.0, 200.0);
           float randomHeight = random(20.0, 450.0);
           m1 = new Monolith(randomXPos, randomYPos, randomWidth, randomHeight);  
         }
         else if(m2 == null) {
           float randomXPos = random(0.0, 945.0);
           float randomYPos = random(0.0, 708.0);
           float randomWidth = random(20.0, 200.0);
           float randomHeight = random(20.0, 450.0);
           m2 = new Monolith(randomXPos, randomYPos, randomWidth, randomHeight);  
         }
         else if(m3 == null) {
           float randomXPos = random(0.0, 945.0);
           float randomYPos = random(0.0, 708.0);
           float randomWidth = random(20.0, 200.0);
           float randomHeight = random(20.0, 450.0);
           m3 = new Monolith(randomXPos, randomYPos, randomWidth, randomHeight);  
         }
     }
     // clear all
     else if(action == 3) {
       if(m1 != null) {
           if(m1.activated) {
               for(int i = 0; i < m1.monolith_circleArr.length; i++) {
                   m1.monolith_circleArr[i].activated = false;  
               }
               m1 = null;
           }
       }
       if(m2 != null) {
           if(m2.activated && m2 != null) {
               for(int i = 0; i < m2.monolith_circleArr.length; i++) {
                   m2.monolith_circleArr[i].activated = false;  
               }
               m2 = null;
           }
       }
       if(m3 != null) {
           if(m3.activated && m3 != null) {
               for(int i = 0; i < m3.monolith_circleArr.length; i++) {
                   m3.monolith_circleArr[i].activated = false;  
               }
               m3 = null;
           }
        }
     }
     countdown = int(random(50, 200));
   }
   else if(countdown > 0) {
      countdown--; 
   }
//  print("um");
  //Circle[] sd = m1.monolith_circleArr;
//  print(_circleArr.length);
  // saveFrame();
  
}

class Monolith {
  float x, y;
  float xMove, yMove = 1;
  float width, height;
  boolean activated;
  
  int countdown;
  
Circle[] monolith_circleArr = {};

  
  Monolith(float posX, float posY, float w, float h) {
      x = posX;
      y = posY;
      
      width = w;
      height = h;
      
      activated = false;
  }
  
  void drawMe() {
   //clear();
   //strokeWeight(1);
   //noStroke();
   rect(x, y, width, height);
  }
 
 void updateMe() {
   angle++; 
   x += xMove;
   float rad = radians(angle);
   y = yMove + 45 + (sin(rad) * 40);
 
   for(int i = 0; i < _circleArr.length; i++) {  
    if(_circleArr[i].x <= int(x + width) && _circleArr[i].x > int(x) 
    && _circleArr[i].y <= y + height && _circleArr[i].y > int(y) && !activated) {
        monolith_circleArr = (Circle[])append(monolith_circleArr, _circleArr[i]);
        _circleArr[i].activated = true;
    }
    
    if(monolith_circleArr.length == 10 && !activated) {
        activated = true;
    }
  }
  for(int i = 0; i < monolith_circleArr.length; i++) { 
    
    if(monolith_circleArr[i].x > x + width) {
        monolith_circleArr[i].moveCircleX(x);  
    }
    else if(monolith_circleArr[i].x < x) {
       // float xPos = random(x + 1, x + width -1);
        monolith_circleArr[i].moveCircleX(x); 
    }
    if(monolith_circleArr[i].y > y + height) {
       // float yPos = random(y + 1, y + width - 1);
        monolith_circleArr[i].moveCircleX(y);   
    }
    else if(monolith_circleArr[i].y < y) {
       // float yPos = random(y + 1, y + width - 1);
        monolith_circleArr[i].moveCircleX(y); 
    }
  }  
//  drawMe();
 }
}

class Circle {
  float x, y;
  float radius;
  color linecol, fillcol;
  float alph;
  float xmove, ymove;
  boolean activated;
  
  Circle() {
    x = random(width);
    y = random(height);
    radius = random(95) + 10;
    linecol = color(random(255), random(255), random(255));
    fillcol = color(random(255), random(255), random(255));
    alph = random(255);
    xmove = random(8) - 5;
    ymove = random(8) - 5;
    activated = false;
  }
  
  void moveCircleX(float moveX) {
      x = random(-5 + moveX, 5 + moveX);
  }
  
  void moveCircleY(float moveY) {
      y = random(-5 + moveY, 1 + moveY);
  }
  
  void drawMe() {
   noStroke();
   fill(fillcol, alph);
   ellipse(x, y, radius * 2, radius *2);
   stroke(linecol, 150);
   noFill();
   ellipse(x, y, 10, 10);
 }

 void updateMe() {
  float pathsel = random(2);
  if(pathsel == 0 && !activated) {
   angle++; 
   x += xmove;
   float rad = radians(angle);
   y = ymove + 50 + (sin(rad) * 40);
  }
  else if(pathsel == 1 && !activated) {
   x += xmove;
   y += ymove;
  }
  else if(pathsel == 2 && !activated) {
   angle++;
   x += xmove;
   float rad = radians(angle);
   y = ymove + 50 + (pow(sin(rad), 3) * 30);
  }
  else if(activated) {
//   x = xmove;
//   y = ymove; 
  }
  else {
    x += xmove;
    y += ymove;
  }
  if(x > (width + radius)) { x = 0 - radius;}
  if(x < (0 - radius)) { x = width + radius;}
  if(y > (height + radius)) { y = 0 - radius;}
  if(y < (0 - radius)) { y = height + radius;}
 
  for(int i = 0; i < _circleArr.length; i++) {
    Circle otherCirc = _circleArr[i];
    if(otherCirc != this) {
      float dis = dist(x, y, otherCirc.x, otherCirc.y);
      float overlap = dis - radius - otherCirc.radius;
      if(overlap < 0 && (activated || otherCirc.activated)) {
        float midx, midy;
        midx = (x + otherCirc.x)/2;
        midy = (y + otherCirc.y)/2;
      
       int size = int(random(5));
       
       if(activated) {
           if(size == 0) {
              image(img, midx, midy);  
           }
           else if(size == 1) {
              image(img1, midx, midy); 
           }
           else if(size == 2) {
             image(img2, midx, midy);
           }
           else if(size == 3) {
             image(img3, midx, midy);
           }
           else if(size == 4) {
             image(img4, midx, midy);  
           }
           else {
             image(img, midx, midy); 
           }
         }
      }
    }
  }
//   drawMe();
 }
}

void drawCircles() {
  for (int i=0; i < _num; i++) {
  Circle thisCirc = new Circle();
//  thisCirc.drawMe(); 
  _circleArr = (Circle[])append(_circleArr, thisCirc);
 }
}
