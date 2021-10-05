

class Ship extends GameObject{
  
  //intsance var
 // int lives;
 // PVector loc;
 // PVector velocity;
  PVector direction;
  int shotTimer,threshold;
  //constructors
  Ship(){
    lives = 3;
    loc =new PVector(width/2,height/2);
    velocity = new PVector(0,0);
    direction = new PVector(0,-0.1);
    shotTimer =0;
    threshold=60;
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
 //   loc.add(velocity);
    
    super.act();
    shotTimer++;
    
    if(upkey) velocity.add(direction);
     if(downkey) velocity.sub(direction);
     if(leftkey) direction.rotate(-radians(5) );
     if(rightkey) direction.rotate(radians(5) );
     if(spacekey && shotTimer >= threshold){
       myObject.add(new Bullet());
       shotTimer =0;
     }
     
         
    super.act();
    // if (loc.y < -50) loc.y = height+50;
    // if (loc.y > height +50)loc.y = -50;
     //if(loc.x < -50) loc.x = width+50;
     //if (loc.x > width+50) loc.x = -50;
  }
  
}
