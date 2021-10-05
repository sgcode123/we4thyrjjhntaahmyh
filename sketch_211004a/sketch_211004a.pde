int mode;


final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;

boolean upkey,downkey,leftkey,rightkey,spacekey;

Ship myShip;
ArrayList<GameObject> myObject;



void setup()  {
  size(800,600);
   mode = INTRO;
  imageMode(CENTER);
  myShip = new Ship();
  myObject = new ArrayList<GameObject>();
  myObject.add(myShip);
  myObject.add(new Asteroid());
  myObject.add(new Asteroid());
  myObject.add(new Asteroid());
}




void draw(){
  background(0);

  
  int i =0;
  while(i< myObject.size()){
   GameObject myObj = myObject.get(i);
    myObj.show();
    myObj.act();
   
   if(myObj.lives ==0){
     myObject.remove(i);
     
   }else{
     i++;
   }
  }
    if(mode == INTRO){
    intro();
  }else if (mode == GAME){
    game();
  }else if(mode == PAUSE){
    pause();
  }else if(mode == GAMEOVER){
    gameover();
  }else {
    println("Error: Mode = " + mode);
}
}
