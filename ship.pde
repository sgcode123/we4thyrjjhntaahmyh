class Ship {
  
  //intsance var
  int lives;
  PVector loc;
  PVector velocity;
  PVector direction;
  
  //constructors
  Ship(){
    lives = 3;
    loc =new PVector(width/2,height/2);
    velocity = new PVector(0,0);
    direction = new PVector(0,-0.1);
    
  }
  
  
  
  //behavior
  void show(){
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(direction.heading());
    noFill();
    stroke(255);
    triangle(-25,-12.5,-25,12.5,25,0);
    
    popMatrix();
    
  }
  
  void act(){
    loc.add(velocity);
    
    
    if(upkey) velocity.add(direction);
     if(downkey) velocity.sub(direction);
     if(leftkey) direction.rotate(-radians(5) );
     if(rightkey) direction.rotate(radians(5) );
     if(spacekey) myBullets.add(new Bullet());
     
     
     
     if (loc.y < -50) loc.y = height+50;
     if (loc.y > height +50)loc.y = -50;
     if(loc.x < -50) loc.x = width+50;
     if (loc.x > width+50) loc.x = -50;
  }
  
}
