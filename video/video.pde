import processing.video.*;

Movie theMov; 
int size;

void setup() { 

  theMov = new Movie(this,"angel.mp4");
  theMov.loop();
  size(displayWidth, displayHeight);
  noStroke();
  size = 5;
}

void draw() { 
  //image(theMov, 0, 0, width, height);
  theMov.loadPixels();
  for (int i = 0; i < theMov.width; i+=size) {
    for (int j = 0; j < theMov.height; j+=size) {
      float ratioX = (float)width / theMov.width;
      float ratioY = (float)height / theMov.height;
      float r = red(theMov.pixels[i+j*theMov.width]);
      float g = green(theMov.pixels[i+j*theMov.width]);
      float b = blue(theMov.pixels[i+j*theMov.width]);
   
   
      float adjustBrightness = ((float)mouseX / width) * 8.0;
      r *= adjustBrightness;
      g *= adjustBrightness;
      b *= adjustBrightness;
      color c = color (r, g, b);
      //color c = theMov.pixels[i+j*theMov.width];
      fill(c);
      rect(i * ratioX, j * ratioY, size * ratioX, size * ratioY);
    }
  }
  updatePixels();
  
} 

void movieEvent(Movie m) { 
  m.read();
} 
  
/*import processing.video.*;
Movie video;
// Size of each cell in the grid, ratio of window size to video size
int videoScale = 1;
// Number of columns and rows in our system
int cols, rows;
// Variable to hold onto Capture object
//Capture video;
void setup() {
  size(600, 600);
  // Initialize columns and rows
  cols = width/videoScale;
  rows = height/videoScale; 
  background(0);
 video=new Movie(this,"angel.mp4");
  video.loop();
  noStroke();
  
  println (cols);
}
void draw() {
  // Read image from the camera
  if (video.available()) {
    video.read();
  }
  video.loadPixels();
  // Begin loop for columns
  for (int i = 0; i < cols; i++) {
    // Begin loop for rows
    for (int j = 0; j < rows; j++) {
      // Where are we, pixel-wise?
      int  imageLoc = i+j*video.width;
      int  displayLoc = i+j*width;
      float r = red(video.pixels[imageLoc]);
      float g = green(video.pixels[imageLoc]);
      float b = blue(video.pixels[imageLoc]);
       float distance = dist(i, j, mouseX, mouseY);
      float adjustBrightness = (100-distance)/50;
      r *= adjustBrightness;
      g *= adjustBrightness;
      b *= adjustBrightness;
      
      r = constrain (r, 0, 255);
      g = constrain (r, 0, 255);
      b = constrain (r, 0, 255);

      
      color c = color (r, g, b);
      
      long x = i*videoScale;
      long y = j*videoScale;
      // Looking up the appropriate color in the pixel array
      //color c = video.pixels[i+j*video.width];
      fill(c);
      //stroke(0);
      rect(x, y, videoScale, videoScale);
      //image(video,x,y,videoScale,videoScale);
    }
  }
}
*/


