// class for text message functions

class Message{
  
  float x;
  float y;
  float diameter;
  
//code from coding train moving image begins:https://www.youtube.com/watch?v=7BoJBYh16CQ//  
 Message(float tempX, float tempY, float tempD){
   x = tempX;
   y = tempY;
   diameter = tempD;
  
} 
//fall from top of page
void rain(){
  if (y < 580){
 y++;
 x = x + random (-1,3);}
}
//code from coding train ends//
//display the message
void display(){
  
  stroke(0);
  fill(127);
 image(friends, x, y, diameter, diameter);
}


void display2(){
  
  stroke(0);
  fill(127);
 image(friends2, x, y, diameter, diameter);
}


void display3(){
  
  stroke(0);
  fill(127);
 image(friends3, x, y, diameter, diameter);
}

void display4(){
  
  stroke(0);
  fill(127);
 image(friends4, x, y, diameter, diameter);
}

void display5(){
  
  stroke(0);
  fill(127);
 image(friends, x, y, diameter, diameter);
}

void display6(){
  
  stroke(0);
  fill(127);
 image(friends6, x, y, diameter, diameter);
}

void display7(){
  
  stroke(0);
  fill(127);
 image(friends7, x, y, diameter, diameter);
}

void display8(){
  
  stroke(0);
  fill(127);
 image(friends8, x, y, diameter, diameter);
}

//text messages collect at the bottom of the sketch (don't go off the page)
void bottom(){
  if (y > 780){
    y= 780;
  }
}
}
