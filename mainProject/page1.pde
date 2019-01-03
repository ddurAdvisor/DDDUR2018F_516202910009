int interval1=50;
int placechoose1, placechoose2;
int max1[]={800, 800, 600, 2500, 2500, 1500, 2500, 2500, 2000, 2500, 2500, 2000};////////////////hale 012 yican 012 sancan 012  sican012
int max2[]={25, 25, 40, 250, 250, 150, 0, 0, 25, 80, 100, 80};/////////////hale012 yican012 sancan2 sican012
float posx[]=new float[18];
float posy[]=new float[18];
int maxxx, maxxx2;
Place pp=new Place();

void page1() {
  image(page1, 0, 0);
  pagechangerUI1();
  m1.display();
  pp.display1();
  pp.display2();
  datavisual1();
  datavisual11();
  toptime();
  datashoww();
}










void datavisual1() {
  pushStyle();
  if (currMonth==10) {
    switch(placechoose1) {
    case 0:////hale 10
      for (int i=0; i<18; i++) {
        rectMode(CORNERS);
        noStroke();
        fill(col1);
        rect(283+i*interval1, height-209, 283+i*interval1+25, height-209-map(hl[0][i], 0, max1[0], 0, 500));
      }
      maxxx=max1[0];
      drawGUI();
      break;
    case 1:
      for (int i=0; i<18; i++) {
        rectMode(CORNERS);
        noStroke();
        fill(col1);
        rect(283+i*interval1, height-209, 283+i*interval1+25, height-209-map(yc[0][i], 0, max1[3], 0, 500));
      }       
      maxxx=max1[3];
      drawGUI();
      break;
    case 3:
      for (int i=0; i<18; i++) {
        rectMode(CORNERS);
        noStroke();
        fill(col1);
        rect(283+i*interval1, height-209, 283+i*interval1+25, height-209-map(sc[0][i], 0, max1[6], 0, 500));
      }       
      maxxx=max1[6];
      drawGUI();
      break;   
    case 4:
      for (int i=0; i<18; i++) {
        rectMode(CORNERS);
        noStroke();
        fill(col1);
        rect(283+i*interval1, height-209, 283+i*interval1+25, height-209-map(sic[0][i], 0, max1[9], 0, 500));
      }       
      maxxx=max1[9];
      drawGUI();
      break;
    }
  } 
  if (currMonth==11) {
    switch(placechoose1) {
    case 0:////hale 10
      for (int i=0; i<18; i++) {
        rectMode(CORNERS);
        noStroke();
        fill(col1);
        rect(283+i*interval1, height-209, 283+i*interval1+25, height-209-map(hl[1][i], 0, max1[1], 0, 500));
      }       
      maxxx=max1[1];
      drawGUI();
      break;
    case 1:
      for (int i=0; i<18; i++) {
        rectMode(CORNERS);
        noStroke();
        fill(col1);
        rect(283+i*interval1, height-209, 283+i*interval1+25, height-209-map(yc[1][i], 0, max1[4], 0, 500));
      }       
      maxxx=max1[4];
      drawGUI();
      break;
    case 3:
      for (int i=0; i<18; i++) {
        rectMode(CORNERS);
        noStroke();
        fill(col1);
        rect(283+i*interval1, height-209, 283+i*interval1+25, height-209-map(sc[1][i], 0, max1[7], 0, 500));
      }       
      maxxx=max1[7];
      drawGUI();
      break;   
    case 4:
      for (int i=0; i<18; i++) {
        rectMode(CORNERS);
        noStroke();
        fill(col1);
        rect(283+i*interval1, height-209, 283+i*interval1+25, height-209-map(sic[1][i], 0, max1[10], 0, 500));
      }       
      maxxx=max1[10];
      drawGUI();
      break;
    }
  } 
  if (currMonth==12) {
    switch(placechoose1) {
    case 0:////hale 10
      for (int i=0; i<18; i++) {
        rectMode(CORNERS);
        noStroke();
        fill(col1);
        rect(283+i*interval1, height-209, 283+i*interval1+25, height-209-map(hl[2][i], 0, max1[2], 0, 500));
      }       
      maxxx=max1[2];
      drawGUI();
      break;
    case 1:
      for (int i=0; i<18; i++) {
        rectMode(CORNERS);
        noStroke();
        fill(col1);
        rect(283+i*interval1, height-209, 283+i*interval1+25, height-209-map(yc[2][i], 0, max1[5], 0, 500));
      }       
      maxxx=max1[5];
      drawGUI();
      break;
    case 3:
      for (int i=0; i<18; i++) {
        rectMode(CORNERS);
        noStroke();
        fill(col1);
        rect(283+i*interval1, height-209, 283+i*interval1+25, height-209-map(sc[2][i], 0, max1[8], 0, 500));
      }       
      maxxx=max1[8];
      drawGUI();
      break;   
    case 4:
      for (int i=0; i<18; i++) {
        rectMode(CORNERS);
        noStroke();
        fill(col1);
        rect(283+i*interval1, height-209, 283+i*interval1+25, height-209-map(sic[2][i], 0, max1[11], 0, 500));
      }       
      maxxx=max1[11];
      drawGUI();
      break;
    }
  }
  popStyle();
}

void datavisual11() {
  pushStyle();
  if (currMonth==10) {
    switch(placechoose2) {
    case 0 :
      for (int i=0; i<18; i++) {
        ellipseMode(CENTER);
        noStroke();
        fill(col3);
        posx[i]=283+25/2+i*interval1;
        posy[i]=height-209-map(hl0[0][i], 0, max2[0], 0, 500);
        ellipse(posx[i], posy[i], 10, 10);
      }
      for (int i=0; i<17; i++) {
        stroke(col3);
        line(posx[i], posy[i], posx[i+1], posy[i+1]);
      }
      maxxx2=max2[0];
      drawGUI2();
      break;
    case 1 :
      for (int i=0; i<18; i++) {
        ellipseMode(CENTER);
        noStroke();
        fill(col3);
        posx[i]=283+25/2+i*interval1;
        posy[i]=height-209-map(yc0[0][i], 0, max2[3], 0, 500);
        ellipse(posx[i], posy[i], 10, 10);
      }
      for (int i=0; i<17; i++) {
        stroke(col3);
        line(posx[i], posy[i], posx[i+1], posy[i+1]);
      }      
      maxxx2=max2[3];
      drawGUI2();
      break;      
    case 3 :
      for (int i=0; i<18; i++) {
        ellipseMode(CENTER);
        noStroke();
        fill(col3);
        posx[i]=283+25/2+i*interval1;
        posy[i]=height-209-map(sc0[0][i], 0, max2[6], 0, 500);
        ellipse(posx[i], posy[i], 10, 10);
      }
      for (int i=0; i<17; i++) {
        stroke(col3);
        line(posx[i], posy[i], posx[i+1], posy[i+1]);
      }      
      maxxx2=max2[6];
      drawGUI2();
      break;
    case 4 :
      for (int i=0; i<18; i++) {
        ellipseMode(CENTER);
        noStroke();
        fill(col3);
        posx[i]=283+25/2+i*interval1;
        posy[i]=height-209-map(sic0[0][i], 0, max2[9], 0, 500);
        ellipse(posx[i], posy[i], 10, 10);
      }
      for (int i=0; i<17; i++) {
        stroke(col3);
        line(posx[i], posy[i], posx[i+1], posy[i+1]);
      }      
      maxxx2=max2[9];
      drawGUI2();
      break;
    }
  }

  if (currMonth==11) {
    switch(placechoose2) {
    case 0 :
      for (int i=0; i<18; i++) {
        ellipseMode(CENTER);
        noStroke();
        fill(col3);
        posx[i]=283+25/2+i*interval1;
        posy[i]=height-209-map(hl0[1][i], 0, max2[1], 0, 500);
        ellipse(posx[i], posy[i], 10, 10);
      }
      for (int i=0; i<17; i++) {
        stroke(col3);
        line(posx[i], posy[i], posx[i+1], posy[i+1]);
      }      
      maxxx2=max2[1];
      drawGUI2();
      break;
    case 1 :
      for (int i=0; i<18; i++) {
        ellipseMode(CENTER);
        noStroke();
        fill(col3);
        posx[i]=283+25/2+i*interval1;
        posy[i]=height-209-map(yc0[1][i], 0, max2[4], 0, 500);
        ellipse(posx[i], posy[i], 10, 10);
      }
      for (int i=0; i<17; i++) {
        stroke(col3);
        line(posx[i], posy[i], posx[i+1], posy[i+1]);
      }      
      maxxx2=max2[4];
      drawGUI2();
      break;      
    case 3 :
      for (int i=0; i<18; i++) {
        ellipseMode(CENTER);
        noStroke();
        fill(col3);
        posx[i]=283+25/2+i*interval1;
        posy[i]=height-209-map(sc0[1][i], 0, max2[7], 0, 500);
        ellipse(posx[i], posy[i], 10, 10);
      }
      for (int i=0; i<17; i++) {
        stroke(col3);
        line(posx[i], posy[i], posx[i+1], posy[i+1]);
      }      
      maxxx2=max2[7];
      drawGUI2();
      break;
    case 4 :
      for (int i=0; i<18; i++) {
        ellipseMode(CENTER);
        noStroke();
        fill(col3);
        posx[i]=283+25/2+i*interval1;
        posy[i]=height-209-map(sic0[1][i], 0, max2[10], 0, 500);
        ellipse(posx[i], posy[i], 10, 10);
      }
      for (int i=0; i<17; i++) {
        stroke(col3);
        line(posx[i], posy[i], posx[i+1], posy[i+1]);
      }      
      maxxx2=max2[10];
      drawGUI2();
      break;
    }
  }
  if (currMonth==12) {
    switch(placechoose2) {
    case 0 :
      for (int i=0; i<18; i++) {
        ellipseMode(CENTER);
        noStroke();
        fill(col3);
        posx[i]=283+25/2+i*interval1;
        posy[i]=height-209-map(hl0[2][i], 0, max2[2], 0, 500);
        ellipse(posx[i], posy[i], 10, 10);
      }
      for (int i=0; i<17; i++) {
        stroke(col3);
        line(posx[i], posy[i], posx[i+1], posy[i+1]);
      }      
      maxxx2=max2[2];
      drawGUI2();
      break;
    case 1 :
      for (int i=0; i<18; i++) {
        ellipseMode(CENTER);
        noStroke();
        fill(col3);
        posx[i]=283+25/2+i*interval1;
        posy[i]=height-209-map(yc0[2][i], 0, max2[5], 0, 500);
        ellipse(posx[i], posy[i], 10, 10);
      }
      for (int i=0; i<17; i++) {
        stroke(col3);
        line(posx[i], posy[i], posx[i+1], posy[i+1]);
      }      
      maxxx2=max2[5];
      drawGUI2();
      break;      
    case 3 :
      for (int i=0; i<18; i++) {
        ellipseMode(CENTER);
        noStroke();
        fill(col3);
        posx[i]=283+25/2+i*interval1;
        posy[i]=height-209-map(sc0[2][i], 0, max2[8], 0, 500);
        ellipse(posx[i], posy[i], 10, 10);
      }
      for (int i=0; i<17; i++) {
        stroke(col3);
        line(posx[i], posy[i], posx[i+1], posy[i+1]);
      }      
      maxxx2=max2[8];
      drawGUI2();
      break;
    case 4 :
      for (int i=0; i<18; i++) {
        ellipseMode(CENTER);
        noStroke();
        fill(col3);
        posx[i]=283+25/2+i*interval1;
        posy[i]=height-209-map(sic0[2][i], 0, max2[11], 0, 500);
        ellipse(posx[i], posy[i], 10, 10);
      }
      for (int i=0; i<17; i++) {
        stroke(col3);
        line(posx[i], posy[i], posx[i+1], posy[i+1]);
      }      
      maxxx2=max2[11];
      drawGUI2();
      break;
    }
  }
}


void drawGUI() {
  pushStyle();
  noStroke();
  fill(col1);
  textAlign(LEFT);
  textFont(myfont1);
  textSize(14);
  text(maxxx, 200, height-209-500);
  text(maxxx*4/5, 200, height-209-400);
  text(maxxx*3/5, 200, height-209-300);
  text(maxxx*2/5, 200, height-209-200);
  text(maxxx/5, 200, height-209-100);
  popStyle();
}

void drawGUI2() {
  pushStyle();
  noStroke();
  fill(col5);
  textAlign(LEFT);
  textFont(myfont1);
  textSize(14);
  text(maxxx2, 1225, height-209-500);
  text(maxxx2*4/5, 1225, height-209-400);
  text(maxxx2*3/5, 1225, height-209-300);
  text(maxxx2*2/5, 1225, height-209-200);
  text(maxxx2/5, 1225, height-209-100);
  popStyle();
}






void pagechangerUI1() {
  fill(col1, 40);
  noStroke();

  for (int i=0; i<3; i++) {

    ellipse(50+d/2, 48+d/2+(d+30)*i, d, d);
  }
  if (dist(mouseX, mouseY, 50+d/2, 48+d/2)<=d/2) {
    fill(col1);
    ellipse(50+d/2, 48+d/2, d, d);
    rect(50+d/2, 48, 145, d);
    ellipse(50+d/2+145, 48+d/2, d, d);
    textFont(myfont1);
    textSize(38);
    fill(col2);
    textAlign(BASELINE);
    text("PAGE1", 100, 90);
  }
  if (dist(mouseX, mouseY, 50+d/2, 48+d/2+(d+30))<=d/2) {
    fill(col1);
    ellipse(50+d/2, 48+d/2+(d+30), d, d);
    rect(50+d/2, 48+(d+30), 145, d);
    ellipse(50+d/2+145, 48+d/2+(d+30), d, d);
    textFont(myfont1);
    textSize(38);
    fill(col2);
    textAlign(BASELINE);
    text("PAGE2", 100, 90+(d+30));
  }  
  if (dist(mouseX, mouseY, 50+d/2, 48+d/2+(d+30)*2)<=d/2) {
    fill(col1);
    ellipse(50+d/2, 48+d/2+(d+30)*2, d, d);
    rect(50+d/2, 48+(d+30)*2, 145, d);
    ellipse(50+d/2+145, 48+d/2+(d+30)*2, d, d);
    textFont(myfont1);
    textSize(38);
    fill(col2);
    textAlign(BASELINE);
    text("PAGE3", 100, 90+(d+30)*2);
  }
}


void toptime() {
  pushStyle();
  fill(col4, 190);
  noStroke();
  rect(1080, 48, 300, 60);
  textFont(myfont1);
  textAlign(LEFT);

  fill(255);
  text("PHENOMENON", 1128, 87);
  if (mouseX>1053&&mouseX<1053+344&&mouseY>48&&mouseY<48+60) {
    fill(col4, 190);
    noStroke();
    rect(1080, 108, 300, 200);
    ellipseMode(CORNER);
    fill(col3);
    noStroke();
    ellipse(1125-20, 125, 20, 20);
    ellipse(1125-20, 186, 20, 20);
    ellipse(1125-20, 247, 20, 20);
    textFont(myfont3);
    textAlign(LEFT);
    fill(255);
    textSize(18);
    text("消费时间大致随用餐变化", 1167-18, 117+25);
    text("比用餐时间略微延后", 1167-18, 178+25);
    text("除高峰期外仍有一定消费", 1167-18, 239+25);
  }

  popStyle();
}


void datashoww() {

  if (currMonth>9&&currMonth<13) {
    for (int i=0; i<18; i++) {
      if (abs(mouseX-posx[i])<25/2&&mouseY<(height-209)&&mouseY>(height-209-500)) {
        pushStyle();
        textAlign(CENTER);
        textFont(myfont3);
        fill(col4);
        textSize(14);
        switch(placechoose1) {
        case 0:
          text(hl[currMonth-10][i], mouseX, mouseY);
          break;
        case 1:
          text(yc[currMonth-10][i], mouseX, mouseY);
          break;
        case 3:
          text(sc[currMonth-10][i], mouseX, mouseY);
          break;
        case 4:
          text(sic[currMonth-10][i], mouseX, mouseY);
          break;
        }
        popStyle();          
        pushStyle();
        textAlign(CENTER);
        textFont(myfont3);
        fill(col5);
        textSize(13);
        switch(placechoose2) {
        case 0:
          text(hl0[currMonth-10][i], posx[i], posy[i]-20);
          break;
        case 1:
          text(yc0[currMonth-10][i], posx[i], posy[i]-20);
          break;
        case 3:
          text(sc0[currMonth-10][i], posx[i], posy[i]-20);
          break;
        case 4:
          text(sic0[currMonth-10][i], posx[i], posy[i]-20);
          break;
        }
        popStyle();
      }
    }
  }
}


class Place {
  int place1;
  int place2;
  int[]p1={0, 1, 3, 4};
  String[]p={"哈", "一", "三", "四"};
  int[]p2={0, 1, 3, 4};
  boolean p1selected;
  boolean p2selected;
  int placebuttonD=44;
  PVector place1button[]=new PVector[4];
  {
    place1button[0]=new PVector(50, 594);
    place1button[1]=new PVector(108, 594);
    place1button[2]=new PVector(50, 652);
    place1button[3]=new PVector(108, 652);
  }
  PVector place2button[]=new PVector[4];
  {
    place2button[0]=new PVector(1284, 594);
    place2button[1]=new PVector(1342, 594);
    place2button[2]=new PVector(1284, 652);
    place2button[3]=new PVector(1342, 652);
  }
  Place() {
  }
  void display1() {    
    for (int i =0; i<4; i++) {
      if (placechoose1==p1[i]) {
        pushStyle();
        noStroke();
        fill(col1);
        rect(place1button[i].x, place1button[i].y, placebuttonD, placebuttonD);
        popStyle();
        textAlign(CENTER);
        textFont(myfont3);
        textSize(15);
        fill(col0);
        text(p[i], place1button[i].x+placebuttonD/2, place1button[i].y+placebuttonD/2+5);
      } else {
        pushStyle();
        noStroke();
        fill(col4);
        rect(place1button[i].x, place1button[i].y, placebuttonD, placebuttonD);
        popStyle();
        textAlign(CENTER);
        textFont(myfont3);
        textSize(15);
        fill(col1);
        text(p[i], place1button[i].x+placebuttonD/2, place1button[i].y+placebuttonD/2+5);
      }
    }
  }
  void display2() {    
    for (int i =0; i<4; i++) {
      if (placechoose2==p2[i]) {
        pushStyle();
        noStroke();
        fill(col1);
        rect(place2button[i].x, place2button[i].y, placebuttonD, placebuttonD);
        popStyle();
        textAlign(CENTER);
        textFont(myfont3);
        textSize(15);
        fill(col0);
        text(p[i], place2button[i].x+placebuttonD/2, place2button[i].y+placebuttonD/2+5);
      } else {
        pushStyle();
        noStroke();
        fill(col4);
        rect(place2button[i].x, place2button[i].y, placebuttonD, placebuttonD);
        popStyle();
        textAlign(CENTER);
        textFont(myfont3);
        textSize(15);
        fill(col1);
        text(p[i], place2button[i].x+placebuttonD/2, place2button[i].y+placebuttonD/2+5);
      }
    }
  }
}
