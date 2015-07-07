int[] data;
String[] nama;
boolean tombol=false;
int grapik=0;

void setup()
{
  size(1280,720);
  smooth();
  noStroke();
  //noLoop();
  stroke(3);
  background(250);
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
  fill(0);
  text("Statistik Data Steam",600,20);
  fill(255);
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
  rect(10,70,50,50);//
    fill(0);
  text("SENIN",15,100);
  fill(255);
  rect(70,70,50,50);//
      fill(0);
  text("SELASA",71,100);
  fill(255);
  rect(130,70,50,50);//
      fill(0);
  text("RABU",138,100);
  fill(255);
  rect(190,70,50,50);//
      fill(0);
  text("KAMIS",195,100);
  fill(255);
  rect(250,70,50,50);//
      fill(0);
  text("JUMAT",255,100);
  fill(255);
  rect(310,70,50,50);//
      fill(0);
  text("SABTU",315,100);
  fill(255);
  rect(370,70,50,50);//
      fill(0);
  text("MINGGU",370,100);
  fill(255);


  
}


/// bkin pie chart
void steamchart(float d, int[] data,String[] nama) // hasil copas, ganti semua angles ke var yg bakal dibuat
{
  float lastAngle = 0;
  for (int i = 0; i < data.length; i++) 
  {
    
    fill(random(0,255),random(0,255),random(0,255));
    rect(1000,200+(i*30),10,10);
    float persen=data[i]*100/360;
    text(nama[i]+"= "+persen+"%",1020,200+(i*30)); 
    arc(width/2, height/2, d, d, lastAngle, lastAngle+radians(data[i]));
    lastAngle += radians(data[i]);
  }
}

void steamblocks(float d, int[] data,String[] nama) // hasil copas, ganti semua angles ke var yg bakal dibuat
{
  translate(400,100);
  for (int i = 0; i < data.length; i++) 
  {

    fill(random(0,255),random(0,255),random(0,255));
        rect(600,100+(i*30),10,10);
    float persen=data[i]*100/360;
    text(nama[i]+"= "+persen+"%",600,100+(i*30)); 
    rect(i*50,200-data[i]+100,40,data[i]+100);
  }
  translate(-400,-100);
}

void mouseClicked()
{

  //////////////// menentukan bkin grafik apa/////////////////////
  if((mouseX > 10 && mouseX < 110 ) && (mouseY>10 && mouseY < 60))
  {
    if(mouseButton == LEFT)
    {
       grapik=1;//pie chart
       //background(0);
    }
  }
  else if((mouseX > 120 && mouseX < 220 ) && (mouseY>10 && mouseY < 60))
  {
    if(mouseButton == LEFT)
    {
       grapik=2;//batang
       //background(200);
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
        background(250);//background(100); /// masukin chart pie hapus background kalau gk perlu
        String[] stuff = loadStrings( "data.txt");
         String[] penj=loadStrings("nama.txt");
        nama= split(penj[0],',');
        data = int(split(stuff[0], ','));
        steamchart(300, data,nama);
        
      }
    }
    else if ((mouseX > 70 && mouseX < 120 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
        background(250);//background(120); /// masukin chart pie hapus background kalau gk perlu
        String[] stuff = loadStrings( "data2.txt");
        String[] penj=loadStrings("nama2.txt");
        nama= split(penj[0],',');
        data = int(split(stuff[0], ','));
        steamchart(300, data,nama);      
      }
    }
  
    else if ((mouseX > 130 && mouseX < 180 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
        background(250);//background(220); /// masukin chart pie hapus background kalau gk perlu
        String[] stuff = loadStrings( "data3.txt");
         String[] penj=loadStrings("nama3.txt");
        nama= split(penj[0],',');
        data = int(split(stuff[0], ','));
        steamchart(300, data,nama);
      }
    }
  
    else if ((mouseX > 180 && mouseX < 240 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
        background(250);//background(20); /// masukin chart pie hapus background kalau gk perlu
        String[] stuff = loadStrings( "data4.txt");
         String[] penj=loadStrings("nama4.txt");
        nama= split(penj[0],',');
        data = int(split(stuff[0], ','));
        steamchart(300, data,nama);     
      }
    }
  
  
    else if ((mouseX > 250 && mouseX < 300 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
        background(250);//background(70); /// masukin chart pie hapus background kalau gk perlu
        String[] stuff = loadStrings( "data5.txt");
         String[] penj=loadStrings("nama5.txt");
        nama= split(penj[0],',');
        data = int(split(stuff[0], ','));
        steamchart(300, data,nama);
      }
    }
  
    else if ((mouseX > 310 && mouseX < 360 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
        background(250);//background(260); /// masukin chart pie hapus background kalau gk perlu
        String[] stuff = loadStrings( "data6.txt");
         String[] penj=loadStrings("nama6.txt");
        nama= split(penj[0],',');
        data = int(split(stuff[0], ','));
        steamchart(300, data,nama);
      }
    }
  
  
    else if ((mouseX > 370 && mouseX < 420 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
        background(250);//background(10); /// masukin chart pie hapus background kalau gk perlu
        String[] stuff = loadStrings( "data7.txt");
         String[] penj=loadStrings("nama7.txt");
        nama= split(penj[0],',');
        data = int(split(stuff[0], ','));
        steamchart(300, data,nama);
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
        background(250); /// masukin chart pie hapus background kalau gk perlu
        String[] stuff = loadStrings( "data.txt");
        String[] penj=loadStrings("nama.txt");
        nama= split(penj[0],',');
        data = int(split(stuff[0], ','));
        steamblocks(30, data,nama);
      }
    }
    else if ((mouseX > 70 && mouseX < 120 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
        background(250); /// masukin chart pie hapus background kalau gk perlu
        String[] stuff = loadStrings( "data2.txt");
        String[] penj=loadStrings("nama2.txt");
        nama= split(penj[0],',');
        data = int(split(stuff[0], ','));
        steamblocks(30, data,nama);
      }
    }
  
    else if ((mouseX > 130 && mouseX < 180 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
        background(250); /// masukin chart pie hapus background kalau gk perlu
        String[] stuff = loadStrings( "data3.txt");
        String[] penj=loadStrings("nama3.txt");
        nama= split(penj[0],',');
        data = int(split(stuff[0], ','));
        steamblocks(30, data,nama);

      }
    }
  
    else if ((mouseX > 180 && mouseX < 240 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
      background(250); /// masukin chart pie hapus background kalau gk perlu
        String[] stuff = loadStrings( "data4.txt");
         String[] penj=loadStrings("nama4.txt");
        nama= split(penj[0],',');
        data = int(split(stuff[0], ','));
        steamblocks(30, data,nama);

      }
    }
  
  
    else if ((mouseX > 250 && mouseX < 300 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
      background(250); /// masukin chart pie hapus background kalau gk perlu
        String[] stuff = loadStrings( "data5.txt");
        String[] penj=loadStrings("nama5.txt");
        nama= split(penj[0],',');
        data = int(split(stuff[0], ','));
        steamblocks(30, data,nama);
      }
    }
  
    else if ((mouseX > 310 && mouseX < 360 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
    
        background(250); /// masukin chart pie hapus background kalau gk perlu
        String[] stuff = loadStrings( "data6.txt");
        String[] penj=loadStrings("nama6.txt");
        nama= split(penj[0],',');
        data = int(split(stuff[0], ','));
        steamblocks(30, data,nama);
      }
    }
  
  
    else if ((mouseX > 370 && mouseX < 420 ) && (mouseY>70 && mouseY <120 ))
    {
      if(mouseButton == LEFT)
      {
    
        background(250); /// masukin chart pie hapus background kalau gk perlu
        String[] stuff = loadStrings( "data7.txt");
        String[] penj=loadStrings("nama7.txt");
        nama= split(penj[0],',');
        data = int(split(stuff[0], ','));
        steamblocks(30, data,nama);
      }
    }
                 
  }
}


