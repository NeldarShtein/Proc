int ChCol = 0, cerS = 50, amountS = 200, col2 = 255;
int amountS0 = 0, StZ = 0, ButDist1 = 120, ButDist2 = 3;
int LineC = 0, FoneC = 0, sizeP = 40, editNumber = 4, setNumber = 0, setNumber2 = 1, timerFun = 0;
int BrightP = 40, BrightP2L = 0, BrightP2R = 0, colL = 0, colR = 0, ContL = 0, ContR = 0;
int OBJECTAmount = 5, OBJECTN = 1, clickCh = 0, asd = 0, EffectN = 1;
float col = 0;
float radS = 80;
float xS[] = new float[amountS];
float yS[] = new float[amountS];
PImage loadedImage;
SimpleUI UIforIm;

void setup() {
  size(1280, 720);
  frameRate(100);
  surface.setTitle("SoulChanger");
  surface.setLocation(320, 180);
  colorMode(HSB, 255);
  smooth(2);
  UIforIm = new SimpleUI();
  
  for (int i = 0; i < amountS; i++) {
    col = random(0, 244);
    radS = random(20, 80);
    xS[i] = random(5, width-5);
    yS[i] = random(5, height-5);
  }
}

void draw() {
  UIforIm.update();
  if(StZ==0) Stage0 ();
  else if (setNumber>=1) Functionality1();
  else if (mousePressed && (mouseX>=169) && (mouseX<=912) && (mouseY>=71) && (mouseY<=709)) {Functionality2();}
  else if(mousePressed && (setNumber2==1) && (mouseButton == LEFT) && (mouseX>=975) && (mouseX<=1228) && (mouseY>=122) && (mouseY<=376))  {colL = mouseX-974; ContL = mouseY-122; BrightP2L = BrightP;}
  else if (mousePressed && (setNumber2==1) && (mouseButton == RIGHT) && (mouseX>=975) && (mouseX<=1228) && (mouseY>=122) && (mouseY<=376)) {colR = mouseX-974; ContR = mouseY-122; BrightP2R = BrightP;}
  else if(StZ==1) Stage1 ();
  
  if( (loadedImage != null) && (asd==0)){image(loadedImage,169,71, width-367, 710); asd=1;}
}

public void MainB (){
  fill(FoneC);
  stroke(LineC);
  quad(0, 0, ButDist1*1, 0, ButDist1*1, 30, 0, 30);
  quad(ButDist1*1, 0, ButDist1*2, 0, ButDist1*2, 30, ButDist1*1, 30);
  quad(ButDist1*2, 0, ButDist1*3, 0, ButDist1*3, 30, ButDist1*2, 30);
  quad(ButDist1*3, 0, ButDist1*4, 0, ButDist1*4, 30, ButDist1*3, 30);
  quad(ButDist1*4, 0, ButDist1*5, 0, ButDist1*5, 30, ButDist1*4, 30);
  quad(ButDist1*5, 0, width-1, 0, width-1, 30, ButDist1*5, 30);
  quad(0, 30, width-1, 30, width-1, 70, 0, 70);
  quad(0, 70, 168, 70, 168, height-1, 0, height-1);
  quad(width-357, 70, width-1, 70, width-1, height-1, width-357, height-1);
  quad(width-367, 70, width-357, 70, width-357, height-1, width-367, height-1);
  quad(168, height-11, width-357, height-11, width-357, height-1, 168, height-1);
  for (int i=1; i<=12; i++){
    quad(0, 30+i*40, 168, 30+i*40, 168, 70+i*40, 0, 70+i*40);
  }
  quad(width-357, 30, width-238, 30, width-238, 70, width-357, 70);
  quad(width-238, 30, width-119, 30, width-119, 70, width-238, 70);
  quad(width-119, 30, width-1, 30, width-1, 70, width-119, 70);
  quad(20, 40, 275, 40, 275, 60, 20, 60);
  if (setNumber2 == 1) {
    quad(width-306, 427, width-50, 427, width-50, 457, width-306, 457);
    fill(colL, ContL, BrightP2L);
    quad(width-306, 487, width-276, 487, width-276, 517, width-306, 517);
    fill(colR, ContR, BrightP2R);
    quad(width-306, 547, width-276, 547, width-276, 577, width-306, 577);
    fill(130);
    quad(width-305, 428, width-305+BrightP, 428, width-305+BrightP, 456, width-305, 456);
    fill(BrightP); 
    quad(width-306, 120, width-50, 120, width-50, 376, width-306, 376);
  }
  else if (setNumber2 == 2) {
    for (int i=1; i<=OBJECTAmount; i++){
      quad(width-306, 81+i*40, width-50, 81+i*40, width-50, 119+i*40, width-306, 119+i*40);
      quad(width-85, 86+i*40, width-55, 86+i*40, width-55, 113+i*40, width-85, 113+i*40);
    }
    fill(120);
    quad(width-306, 81+OBJECTN*40, width-50, 81+OBJECTN*40, width-50, 119+OBJECTN*40, width-306, 119+OBJECTN*40);
    fill(FoneC);
    quad(width-85, 86+OBJECTN*40, width-55, 86+OBJECTN*40, width-55, 113+OBJECTN*40, width-85, 113+OBJECTN*40);
  } 
  else if (setNumber2 == 3) {
    for (int i=1; i<=7; i++){
      quad(width-306, 71+i*40, width-50, 71+i*40, width-50, 109+i*40, width-306, 109+i*40);
    }
    fill(120);
    quad(width-306, 71+EffectN*40, width-50, 71+EffectN*40, width-50, 109+EffectN*40, width-306, 109+EffectN*40);
  } 
  stroke(LineC);
  fill(130);
  quad(21, 41, 21+sizeP, 41, 21+sizeP, 59, 21, 59);
  fill(120);
  quad(0, 30+editNumber*40, 168, 30+editNumber*40, 168, 70+editNumber*40, 0, 70+editNumber*40);
}

public void MainBT (){
  fill(LineC);
  textSize(24);
  text("NEW", 36, 24);
  text("LOAD", 150, 24);
  text("SAVE", 270, 24);
  text("HELP", 390, 24);
  text("EXIT", 510, 24);

  textSize(30);
  text("SELECT", 20, 100);
  text("MOVE", 20, 140);
  text("SIZE", 20, 180);
  text("PEN", 20, 220);
  text("ERASER", 20, 260);
  text("FILL", 20, 300);
  text("TEXT", 20, 340);
  text("LINE", 20, 380);
  text("CURVE", 20, 420);
  text("CIRCLE", 20, 460);
  text("RECT", 20, 500);
  text("QUAD", 20, 540);
  
  text("COLOR", 933, 60);
  text("OBJECT", 1052, 60);
  text("EFFECT", 1171, 60);
  
  if (setNumber2 == 1) {
    text("COLOR", 1052, 110);
    text("BRIGHTNESS", 1022, 415);
    text("LEFT", 1022, 510);
    text("RIGHT", 1022, 570);
    textSize(20);
    text("BRIGHTNESS "+BrightP, 1022, 450);
  }
  else if (setNumber2 == 2) {
    text("OBJECTS", 1032, 105);
    for (int i=1; i <= OBJECTAmount; i++){
      text("OBJECT " + i, 1032, 150+(i*40-40));
      text("X", 1202, 150+(i*40-40));
    }
  }
  else if (setNumber2 == 3) {
    for (int i=1; i <= 7; i++){
      text("EFFECT " + i, 1052, 140+(i*40-40));
    }
  }
  
  textSize(20);
  text("SIZE "+sizeP, 120, 58);
  text("editNumber "+editNumber, 320, 58);
  text("setNumber "+setNumber, 620, 58);
}

public void SetEvr (){
  MainB ();
  MainSelect ();
  MainBT ();
}
public void SetEvr2 (){
  MainB ();
  MainBT ();
}

public void MainSelect (){
  if ((mouseX>=20) && (mouseX<=274) && (mouseY>=40) && (mouseY<=60)){
    if (mousePressed && (mouseButton == LEFT)){sizeP = mouseX-19;}}
  else if ((mouseX>=975) && (mouseX<=1229) && (mouseY>=428) && (mouseY<=456)){
    if (mousePressed && (mouseButton == LEFT)){BrightP = mouseX-974;}}
  else if ((mouseX>=1) && (mouseX<=167) && (mouseY>=71) && (mouseY<=600)) {
    for (int i=1; i<=12; i++){
      if ((mouseX>=1) && (mouseX<=167) && (mouseY>=31+i*40) && (mouseY<=69+i*40)){
        fill(120);
        quad(0, 31+i*40, 168, 31+i*40, 168, 69+i*40, 0, 69+i*40);
        if (mousePressed && (mouseButton == LEFT)){editNumber = i;}
      }
    }
  }
  else if ((mouseX>=924) && (mouseX<=1280) && (mouseY>=31) && (mouseY<=69)) {
    for (int i=1; i<=3; i++){
      if ((mouseX>=924+119*(i-1)) && (mouseX<=922+119*i) && (mouseY>=31) && (mouseY<=69)){
        fill(120);
        quad(924+119*(i-1), 31, 922+119*i, 31, 922+119*i, 69, 924+119*(i-1), 69);
        if (mousePressed && (mouseButton == LEFT)) {setNumber2 = i;}
      }
    }
  }
  else if ((mouseX>=1) && (mouseX<=600) && (mouseY>=1) && (mouseY<=29)) {
    for (int i=1; i<=5; i++){
      if ((mouseX>=ButDist1*(i-1)+1) && (mouseX<=ButDist1*i-1) && (mouseY>=1) && (mouseY<=29)){
        fill(120);
        quad(ButDist1*(i-1)+1, 1, ButDist1*i-1, 1, ButDist1*i-1, 29, ButDist1*(i-1)+1, 29);
        if (mousePressed && (mouseButton == LEFT) && (setNumber==0)) {setNumber = i;}
      }
    }
  }
  else if ((setNumber2==2) && (mouseX>=974) && (mouseX<=1229) && (mouseY>=122) && (mouseY<=719)) {
    for (int i=1; i<=OBJECTAmount; i++){
      if ((mouseY>=86+i*40) && (mouseY<=113+i*40) && (mouseX>=width-85) && (mouseX<=width-55)){
        fill(120);
        quad(width-85, 86+i*40, width-55, 86+i*40, width-55, 113+i*40, width-85, 113+i*40);
      }
      else if ((mouseY>=81+i*40) && (mouseY<=119+i*40)){
        fill(120);
        quad(width-306, 81+i*40, width-50, 81+i*40, width-50, 119+i*40, width-306, 119+i*40);
        fill(0);
        quad(width-85, 86+i*40, width-55, 86+i*40, width-55, 113+i*40, width-85, 113+i*40);
        if (mousePressed && (mouseButton == LEFT)){OBJECTN = i;}
      }
    }
  }
  else if ((setNumber2==3) && (mouseX>=974) && (mouseX<=1229) && (mouseY>=122) && (mouseY<=719)) {
    for (int i=1; i<=7; i++){
      if ((mouseY>=71+i*40) && (mouseY<=109+i*40)){
        fill(120);
        quad(width-306, 71+i*40, width-50, 71+i*40, width-50, 109+i*40, width-306, 109+i*40);
        if (mousePressed && (mouseButton == LEFT)){EffectN = i;}
      }
    }
  }
  if ((setNumber2==1) && (mouseX>=974) && (mouseX<=1229) && (mouseY>=122) && (mouseY<=719)) {colorMode(HSB, 255);for (int i = 0; i < 255; i++) {for (int j = 0; j < 255; j++) {stroke(i, j, BrightP); point(i+975, j+121);}}}
}
public void SelectBut (){

}
public void MoveBut (){

}
public void SizeBut (){

}
public void PenBut (){
  if (mousePressed && (mouseButton == LEFT)){
    noStroke();
    fill(colL, ContL, BrightP2L);
    circle(mouseX, mouseY, sizeP);
  }
  else if (mousePressed && (mouseButton == RIGHT)){
    noStroke();
    fill(colR, ContR, BrightP2R);
    circle(mouseX, mouseY, sizeP);
  }
}
public void EraserBut (){
  if (mousePressed && (mouseButton == LEFT)){
    noStroke();
    fill(255);
    circle(mouseX, mouseY, sizeP);
  }
  
}
public void FillBut (){

}
public void TextBut (){

}
public void LineBut (){

}
public void CurveBut (){

}
public void CircleBut (){

}
public void RectBut (){

}
public void QuadBut (){

}

public void NEWFun (){StZ=0; ChCol=0; setNumber=0; col2 = 255; cerS = 50; amountS0 = 0; LineC = 0; FoneC = 0; sizeP = 40; editNumber = 4; setNumber = 0; setNumber2 = 1; timerFun = 0; BrightP = 40; BrightP2L = 0; BrightP2R = 0; colL = 0; colR = 0; ContL = 0; ContR = 0;}
public void LoadFun (){
  UIforIm.openFileLoadDialog("load an image");
  setNumber=0;
}
public void SaveFun (){
  UIforIm.openFileSaveDialog("save an image");
  setNumber=0;
}
public void HelpFun (){
  setNumber=0;
 }
public void ExitFun (){
  exit();
}

public void Effect1 (){

}
public void Effect2 (){

}
public void Effect3 (){

}
public void Effect4 (){

}
public void Effect5 (){

}
public void Effect6 (){

}
public void Effect7 (){

}





















































public void Functionality1 (){
  if (setNumber==1) NEWFun ();
  else if (setNumber==2) LoadFun ();
  else if (setNumber==3) SaveFun ();
  else if (setNumber==4) HelpFun ();
  else if (setNumber==5) ExitFun ();
}

public void Functionality3 (){
  if (EffectN==1) Effect1 ();
  else if (EffectN==2) Effect2 ();
  else if (EffectN==3) Effect3 ();
  else if (EffectN==4) Effect4 ();
  else if (EffectN==5) Effect5 ();
  else if (EffectN==6) Effect6 ();
  else if (EffectN==7) Effect7 ();
}

public void Functionality2 (){
  if (editNumber==1) SelectBut ();
  else if (editNumber==2) MoveBut ();
  else if (editNumber==3) SizeBut ();
  else if (editNumber==4) PenBut ();
  else if (editNumber==5) EraserBut ();
  else if (editNumber==6) FillBut ();
  else if (editNumber==7) TextBut ();
  else if (editNumber==8) LineBut ();
  else if (editNumber==9) CurveBut ();
  else if (editNumber==10) CircleBut ();
  else if (editNumber==11) RectBut ();
  else if (editNumber==12) QuadBut ();
  if (++timerFun>100){SetEvr2 (); timerFun=0;}
}

public void Stage1 () {
  if (col2==0) DarkT ();
  else if (col2==255) WhiteT ();
}

public void DarkT () {
  LineC = 255; FoneC = 0;
  
  stroke(LineC);
  strokeWeight(1);
  fill(FoneC);
  SetEvr ();
}

public void WhiteT () {
  LineC = 15; FoneC = 240;
  
  stroke(LineC);
  strokeWeight(1);
  fill(FoneC); 
  SetEvr ();
}

public void ChCol0 () {
  if (++col>255) col=0;
  if (col2>0) col2--;
  if (col2==0) ChCol = 1;
  background(col2);
  noStroke();
  fill(col, 255, 255);
  circle(width/2, height/2, cerS);
}

public void ChCol1 () {
  if (++col>255) col=0;
  background(col2);
  noStroke();
  fill(col, 255, 255);
  circle(width/2, height/2, cerS);
  if (--cerS==6) ChCol=2;
}

public void ChCol2 () {
  if (amountS0<=amountS) {
    strokeWeight(3);
    for (int i = 0; i < amountS0; i++){
      stroke(255);
      if (dist(width/2, height/2, xS[i], yS[i]) < radS) {line(width/2, height/2, xS[i], yS[i]);}
      for  (int j = 0; j < i; j++){if (dist(xS[i], yS[i], xS[j], yS[j]) < radS) {line(xS[i], yS[i], xS[j], yS[j]);}}
    }
    for (int i = 0; i <= amountS0; i++){noStroke(); circle(xS[i], yS[i], cerS);}
    amountS0++;
  }
  circle(width/2, height/2, cerS);
  if (amountS0==amountS) ChCol=3;
}

public void ChCol3 () {
  fill(255, 255, 255);
  stroke(255);
  textSize(60);
  text("PRESS", 550, 330);
  if (mousePressed == true) {
    if (mouseX<=width/2){col2=0;}
    else if (mouseX>width/2){col2=255;}
    background(255);    
    if( (loadedImage != null) && (asd==0)){image(loadedImage,169,71, width-367, 710); asd=1;}
    noStroke();
    StZ=1; Stage1 ();}
}

public void Stage0 () {
  if (ChCol==0) ChCol0 ();
  else if (ChCol==1) ChCol1 ();
  else if (ChCol==2) ChCol2 ();
  else if (ChCol==3) ChCol3 ();
}
void handleUIEvent(UIEventData uied){
  uied.print(2);
  if(setNumber==2){
    UIforIm.openFileLoadDialog("load an image");
  }
  if(uied.eventIsFromWidget("fileLoadDialog")){
    loadedImage = loadImage(uied.fileSelection);
  }
  if(setNumber==3){
    UIforIm.openFileSaveDialog("save an image");
  }
  if(uied.eventIsFromWidget("fileSaveDialog")){
    loadedImage.save(uied.fileSelection);
  }
}
