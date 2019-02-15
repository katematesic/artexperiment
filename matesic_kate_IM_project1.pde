//background img
PImage img;

//message object variables

Message m1;
Message m2;
Message m3;
Message m4;
Message m5;
Message m6;
Message m7;
Message m8;
Message mX;


//adding text message  images
PImage friends;
PImage friends2;
PImage friends3;
PImage friends4;
PImage friends5;
PImage friends6;
PImage friends7;
PImage friends8;


void setup(){
  //loading in all of the images
img = loadImage("crowd.png");
friends = loadImage("friends.png");
friends2 = loadImage("friends2.png");
friends2 = loadImage("friends2.png");
friends3 = loadImage("friends3.png");
friends4 = loadImage("friends4.png");
friends5 = loadImage("friends5.png");
friends6 = loadImage("friends6.png");
friends7 = loadImage("friends7.png");
 friends8 = loadImage("friends8.png");
 smooth(); 

  size(1334, 750);

//creating new messages

  m1 = new Message(10, 300 ,128);
    m2 = new Message(10, 340 ,128);
     m3 = new Message(900, 300 ,128);
  m4 = new Message(100, 100 ,128);
  m5 = new Message(200, 200 ,128);
  m6 = new Message(400, 300 ,128);
  m7 = new Message(250, 350 ,128);
    m8 = new Message(290, 310 ,128);


}


void draw(){
   

           
//displaying and moving the messages

  image(img, 0 ,0);
  m1.rain();
  m1.display();
  m1.bottom();
  m2.rain();
  m2.display2();
  m2.bottom();
  m3.rain();  
  m3.display3();
  m3.bottom();
  m4.rain();
  m4.display4();
  m4.bottom();
  m5.rain();
  m6.bottom();
  m6.rain();
  m6.display6();
  m7.bottom();
  m7.rain();
  m7.display7();
  m7.bottom();
  m8.rain();
  m8.display8();
  m8.bottom();

//glitching the background
  int x1 = (int)random(mouseX, height);
  int y1 = 0; 
    //code from in-class exercise begins

  int x2 = round(x1 + random(-7, 7));
    int y2 = round(y1 + random(-5, 5));

  int w = (int)random(15,50);
  int h = (int)random(605,50);
  copy(x1, y1, w, h, x2, y2, w, h);
   //code from in-class exercise ends//
   
   //creating background loop of message generation
   for (float i = 0; i < 0.1; i++) {

    float textPos = map(0, 100, random(300, 500),random(300, 500), height);
      mX = new Message(random(0, 1020), textPos , 50);

  mX.display();
  
  delay(50);

          

}              
 print("Done");
  
 //ending and starting loops
 if(keyCode == UP){
    noLoop();
  }
  
  if(keyCode == DOWN){
    loop();
  }
}

//interactive mouse drag: messages created when mouse is dragged. 
void mouseDragged(){
   
    float textPos = map(0, 100, random(300, 500),random(300, 500), height);
      mX = new Message(random(0, 1020), textPos , 50);
      fill(0,0,0,127);

  mX.display();

}
  
  
 
//save an image to the folder
void keyReleased(){
  
  if (key == 's' || key =='S') saveFrame("frame_###.png");
  
}
