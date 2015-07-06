int[] data;
boolean tombol=false;
int grapik=0;

void setup()
{
  size(1280,720);
  smooth();
  noStroke();
  //noLoop();
  stroke(3);
}

void draw()
{ 
  drawrect();
  if(tombol == true)
  {  
    mouseClicked();
  }

}
void drawrect()
{
  textSize(18);
  text("Statistik Data Steam",600,20);
  textSize(13);

  fill(255);
  //tombol diagram
  rect(10,10,100,50);
  fill(0);
  text("PIE",50,40);
  fill(255);  
  rect(120,10,100,50);
  fill(0);
  text("BATANG",145,40);
  fill(255);
  //tombol hari
  rect(10,70,50,50);
    fill(0);
  text("SENIN",15,100);
  fill(255);
  rect(70,70,50,50);
      fill(0);
  text("SELASA",71,100);
  fill(255);
  rect(130,70,50,50);
      fill(0);
  text("RABU",138,100);
  fill(255);
  rect(190,70,50,50);
      fill(0);
  text("KAMIS",195,100);
  fill(255);
  rect(250,70,50,50);
      fill(0);
  text("JUMAT",255,100);
  fill(255);
  rect(310,70,50,50);
      fill(0);
  text("SABTU",315,100);
  fill(255);
  rect(370,70,50,50);
      fill(0);
  text("MINGGU",370,100);
  fill(255);
  rect(430,70,50,50);
      fill(0);
  text("TOTAL",435,100);
  fill(255);

  
}


/// bkin pie chart
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

void steamblocks(float d, int[] data) // hasil copas, ganti semua angles ke var yg bakal dibuat
{
  for (int i = 0; i < data.length; i++) 
  {
    fill(random(0,255),random(0,255),random(0,255));
    rect(i*50,200-data[i]+100,40,data[i]+100);
  }
}

void mouseClicked()
{

  //////////////// menentukan bkin grafik apa/////////////////////
  if((mouseX > 10 && mouseX < 110 ) && (mouseY>10 && mouseY < 60))
  {
    if(mouseButton == LEFT)
    {
       grapik=1;//pie chart
       background(0);
    }
  }
  else if((mouseX > 120 && mouseX < 220 ) && (mouseY>10 && mouseY < 60))
  {
    if(mouseButton == LEFT)
    {
       grapik=2;//batang
       background(200);
    }
  }
  ///////////// menentukan hari ////////////////////////////////////////
  //// pie chart
  if(grapik==1)
  {
    if((mouseX > 10 && mouseX < 60 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
        background(100); /// masukin chart pie hapus background kalau gk perlu
        String[] stuff = loadStrings( "data.txt");
        data = int(split(stuff[0], ','));
        steamchart(300, data);
        
      }
    }
    else if ((mouseX > 70 && mouseX < 120 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
        background(120); /// masukin chart pie hapus background kalau gk perlu
      }
    }
    else if ((mouseX > 70 && mouseX < 120 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
        background(120); /// masukin chart pie hapus background kalau gk perlu
      }
    }
  
    else if ((mouseX > 130 && mouseX < 180 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
        background(220); /// masukin chart pie hapus background kalau gk perlu
      }
    }
  
    else if ((mouseX > 180 && mouseX < 240 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
        background(20); /// masukin chart pie hapus background kalau gk perlu
      }
    }
  
  
    else if ((mouseX > 250 && mouseX < 300 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
        background(70); /// masukin chart pie hapus background kalau gk perlu
      }
    }
  
    else if ((mouseX > 310 && mouseX < 360 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
        background(260); /// masukin chart pie hapus background kalau gk perlu
      }
    }
  
  
    else if ((mouseX > 370 && mouseX < 420 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
        background(10); /// masukin chart pie hapus background kalau gk perlu
      }
    }
  
    else if ((mouseX > 430 && mouseX < 480 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
        background(0); /// masukin chart pie hapus background kalau gk perlu
      }
    }
  
  }
  ////// char batang////////////////////////////////
  else if(grapik==2)
  {
      if((mouseX > 10 && mouseX < 60 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
        background(100,0,100); /// masukin chart pie hapus background kalau gk perlu
        String[] stuff = loadStrings( "data.txt");
        data = int(split(stuff[0], ','));
        steamblocks(30, data);
      }
    }
    else if ((mouseX > 70 && mouseX < 120 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
        background(120,0,0); /// masukin chart pie hapus background kalau gk perlu
        String[] stuff = loadStrings( "data2.txt");
        data = int(split(stuff[0], ','));
        steamblocks(30, data);
      }
    }
    else if ((mouseX > 70 && mouseX < 120 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
        background(120,120,0); /// masukin chart pie hapus background kalau gk perlu
        String[] stuff = loadStrings( "data3.txt");
        data = int(split(stuff[0], ','));
        steamblocks(30, data);
      }
    }
  
    else if ((mouseX > 130 && mouseX < 180 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
        background(220,0,100); /// masukin chart pie hapus background kalau gk perlu
        String[] stuff = loadStrings( "data4.txt");
        data = int(split(stuff[0], ','));
        steamblocks(30, data);
      }
    }
  
    else if ((mouseX > 180 && mouseX < 240 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
        background(20,0,20); /// masukin chart pie hapus background kalau gk perlu
        String[] stuff = loadStrings( "data5.txt");
        data = int(split(stuff[0], ','));
        steamblocks(30, data);

      }
    }
  
  
    else if ((mouseX > 250 && mouseX < 300 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
        background(70,0,30); /// masukin chart pie hapus background kalau gk perlu
        String[] stuff = loadStrings( "data6.txt");
        data = int(split(stuff[0], ','));
        steamblocks(30, data);
      }
    }
  
    else if ((mouseX > 310 && mouseX < 360 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
        background(0,160,0); /// masukin chart pie hapus background kalau gk perlu
        String[] stuff = loadStrings( "data7.txt");
        data = int(split(stuff[0], ','));
        steamblocks(30, data);
      }
    }
  
  
    else if ((mouseX > 370 && mouseX < 420 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
        background(120,20,10); /// masukin chart pie hapus background kalau gk perlu
        String[] stuff = loadStrings( "datatotal.txt");
        data = int(split(stuff[0], ','));
        steamblocks(30, data);
      }
    }
  
/*    else if ((mouseX > 430 && mouseX < 480 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
        background(255); /// masukin chart pie hapus background kalau gk perlu
      }
    }                   ///  ini knapa ada sembilan :o
  }
*/
}
