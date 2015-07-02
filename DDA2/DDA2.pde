int[] data;
boolean tombol;

void setup()
{
  size(1280,720);
  smooth();
  noStroke();
  //noLoop();
  stroke(3);
  String[] stuff = loadStrings( "data.txt");
  data = int(split(stuff[0], ','));
}

void draw()
{  
  rect(10,10,50,50);
  rect(70,10,110,50);
  rect(230,10,100,50);
  fill(255);
  
  if(tombol == true)
{
  mouseClicked();
}
}
void mouseClicked()
{
  if((mouseX > 10 && mouseX < 60 ) && (mouseY>10 && mouseY < 50))
  {
    if(mouseButton == LEFT)
    {
      tombol = false;
      background(100);
      steamchart(300, data);
    }
  }
  if((mouseX > 70 && mouseX < 10 ) && (mouseY>10 && mouseY < 50))
  {
    if(mouseButton == LEFT)
    {
      tombol = false;
      background(100);
      steamchart(300, data);
    }
  }
    if((mouseX > 210 && mouseX < 310 ) && (mouseY>10 && mouseY < 50))
  {
    if(mouseButton == LEFT)
    { 
      tombol = false;
      background(100);
      steamchart(300, data);
    }
  }
}

void steamchart(float d, int[] data) // hasil copas, ganti semua angles ke var yg bakal dibuat
{
  float lastAngle = 0;
  for (int i = 0; i < data.length; i++) 
  {
    
    float gray =  map  (i, 0, data.length, 0, 255);
    float red  =  map  ((float)data[i],0,data.length,0,255);
    float blue =  map  (lastAngle,0,360,0,255);
    fill(gray,red,blue);
    arc(width/2, height/2, d, d, lastAngle, lastAngle+radians(data[i]));
    lastAngle += radians(data[i]);
  }
}
