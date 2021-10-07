
class Asteroid extends GameObject{
  
  
  Asteroid (){
    lives = 1;
    loc = new PVector (random(0,width), random(0,height));
    velocity= new PVector(0,1);
    velocity.rotate(random(0,TWO_PI));
    
    size =100;
  }
  
  Asteroid(int s, float x,float y){
    lives = 1;
    loc = new PVector(x,y);
       velocity= new PVector(0,1);
     velocity.rotate(random(0,TWO_PI));
     size = s;
  }
  
  
  void show(){
    noFill();
    stroke(255);
    ellipse(loc.x,loc.y,size,size);
  }
  void act(){
    super.act();
    
    int i = 0;
    while(i < myObject.size()){
        GameObject myObj = myObject.get(i);
        if(myObj instanceof Bullet ) {
          if (dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y)<= size/2 +myObj.size){
            myObj.lives = 0;
            lives =0;
            myObject.add(new Asteroid(size/2, loc.x,loc.y));
             myObject.add(new Asteroid(size/2, loc.x,loc.y));
          }
        }
      i ++;
    }
   
  }
}
