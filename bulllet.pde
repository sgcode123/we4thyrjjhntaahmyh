class Bullet {
  
  int lives;
  PVector loc;
  PVector velocity;
  PVector direction;
  
  Bullet(){
    lives = 1;
    loc = new PVector(myShip.loc.x, myShip.loc.y);
   velocity = new PVector(myShip.direction.x, myShip.direction.y);
      velocity.setMag(10);
  }


void show(){
  
  stroke(255);
  noFill();
  ellipse(loc.x , loc.y ,10,10);
}

void act(){
  loc.add(velocity);
  
     if (loc.y < -50) loc.y = height+50;
     if (loc.y > height +50)loc.y = -50;
     if(loc.x < -50) loc.x = width+50;
     if (loc.x > width+50) loc.x = -50;
}
}
