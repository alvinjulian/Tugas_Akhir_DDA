import ddf.minim.analysis.*;
import ddf.minim.*;

Minim minim;
AudioPlayer jingle;
FFT fft;

void setup()
{
  size(600,300,P3D);
  
  minim = new Minim(this);
  jingle = minim.loadFile("beats.mp3",1024);
  
  jingle.loop();
  fft = new FFT(jingle.bufferSize(),jingle.sampleRate());
}

void draw()
{
  background(0);
  fft.forward(jingle.mix);
  ;
  for(int i=2; i < jingle.bufferSize()/2;i++)
  {
    stroke(i*5,255,fft.getBand(i)*2);
    line(i*5,300,i*5,300-fft.getBand(i)*30);
  }
}
