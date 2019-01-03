int num = 500, frms = 180;
float theta;
float interval=30;
float mianbao1, mengyuan1, timo1, dtfruit1, dtveg1, songye1, sg3, bwl4, td4, mianbao4, dtfruit4, halef0;
float hale, yican, sancan, sican;
color col0=color(78, 93, 75);//huilv
color col1=color(242, 243, 229);//danlv
color col2=color(91, 99, 91);//lv
color col3=color(243, 169, 123);//cheng
color col4=color(168, 175, 159);//danhuilv
color col5=color(250, 213, 175);//dancheng

int currMonth=10;
int d=60;
float maxmoney[]={0, 11566120, 0, 0, 0, 0, 0, 0, 0, 9916760, 16949271, 22201536, 23074556};
Month m1=new Month();
//float ellipse_mUI[]=new float [4];
void page2() {
  image(page2, 0, 0);
  // m1.setValues();
  m1.display();
  pagechangerUI2();
  datavisual2();
  datavisual2_2();
  top3();
  //datashow2() ;
}

void pagechangerUI2() {
  fill(col0, 40);
  noStroke();

  for (int i=0; i<3; i++) {

    ellipse(50+d/2, 48+d/2+(d+30)*i, d, d);
  }
  if (dist(mouseX, mouseY, 50+d/2, 48+d/2)<=d/2) {
    fill(col0);
    ellipse(50+d/2, 48+d/2, d, d);
    rect(50+d/2, 48, 145, d);
    ellipse(50+d/2+145, 48+d/2, d, d);
    textFont(myfont1);
    textSize(38);
    fill(col1);
    textAlign(BASELINE);
    text("PAGE1", 100, 90);
  }
  if (dist(mouseX, mouseY, 50+d/2, 48+d/2+(d+30))<=d/2) {
    fill(col0);
    ellipse(50+d/2, 48+d/2+(d+30), d, d);
    rect(50+d/2, 48+(d+30), 145, d);
    ellipse(50+d/2+145, 48+d/2+(d+30), d, d);
    textFont(myfont1);
    textSize(38);
    fill(col1);
    textAlign(BASELINE);
    text("PAGE2", 100, 90+(d+30));
  }  
  if (dist(mouseX, mouseY, 50+d/2, 48+d/2+(d+30)*2)<=d/2) {
    fill(col0);
    ellipse(50+d/2, 48+d/2+(d+30)*2, d, d);
    rect(50+d/2, 48+(d+30)*2, 145, d);
    ellipse(50+d/2+145, 48+d/2+(d+30)*2, d, d);
    textFont(myfont1);
    textSize(38);
    fill(col1);
    textAlign(BASELINE);
    text("PAGE3", 100, 90+(d+30)*2);
  }
}
void top3() {
  pushStyle();
  fill(col4, 190);
  noStroke();
  rect(1080, 48, 300, 60);
  textFont(myfont1);
  textAlign(LEFT);

  fill(255);
  text("T O P 3", 1183, 87);
  if (mouseX>1053&&mouseX<1053+344&&mouseY>48&&mouseY<48+60) {
    fill(col4, 190);
    noStroke();
    rect(1080, 108, 300, 200);
    ellipseMode(CORNER);
    fill(col5);
    noStroke();
    ellipse(1125, 125, 25, 25);
    ellipse(1125, 186, 25, 25);
    ellipse(1125, 247, 25, 25);
    textFont(myfont3);
    textAlign(LEFT);
    fill(255);
    textSize(18);
    text("一餐甜魔咖啡", 1167+13, 117+27);
    text("一餐梦园面包房", 1167+13, 178+27);
    text("四餐甜点", 1167+13, 239+27);
  }

  popStyle();
}


void datavisual2() {
  //哈乐
  pushMatrix();
  translate(573, 642);
  switch(currMonth) {
  case 9:
    hale=prow9_2[16];
    break;
  case 10:
    hale=prow10_2[16];
    break;
  case 11:
    hale=prow11_2[16];
    break;
  case 12:
    hale=prow12_2[16];
    break;
  case 1:
    hale=prow1_2[16];
    break;
  }
  scale(map(hale, 0, 25000000, 0, 0.6));
  myShape(1, col0, 1, 9, 0);
  myShape(0, col1, -1, 9, 10);
  theta += TWO_PI/frms;
  popMatrix();
  //一餐
  pushMatrix();
  translate(539, 538);
  switch(currMonth) {
  case 9:
    yican=prow9_2[13];
    break;
  case 10:
    yican=prow10_2[13];
    break;
  case 11:
    yican=prow11_2[13];
    break;
  case 12:
    yican=prow12_2[13];
    break;
  case 1:
    yican=prow1_2[13];
    break;
  }
  scale(map(yican, 0, 25000000, 0, 0.6));
  myShape(1, col0, 1, 9, 0);
  myShape(0, col1, -1, 9, 10);
  theta += TWO_PI/frms;
  popMatrix();
  //三餐
  pushMatrix();
  translate(742, 310);
  switch(currMonth) {
  case 9:
    sancan=prow9_2[14];
  case 10:
    sancan=prow10_2[14];
    break;
  case 11:
    sancan=prow11_2[14];
    break;
  case 12:
    sancan=prow12_2[14];
    break;
  case 1:
    sancan=prow1_2[14];
    break;
  }
  scale(map(sancan, 0, 25000000, 0, 0.6));
  myShape(1, col0, 1, 9, 0);
  myShape(0, col1, -1, 9, 10);
  theta += TWO_PI/frms;
  popMatrix();
  //四餐
  pushMatrix();
  translate(504, 300);
  switch(currMonth) {
  case 9:
    sican=prow9_2[15];
    break;
  case 10:
    sican=prow10_2[15];
    break;
  case 11:
    sican=prow11_2[15];
    break;
  case 12:
    sican=prow12_2[15];
    break;
  case 1:
    sican=prow1_2[15];
    break;
  }
  scale(map(sican, 0, 25000000, 0, 0.6));
  myShape(1, col0, 1, 9, 0);
  myShape(0, col1, -1, 9, 10);
  theta += TWO_PI/frms;
  popMatrix();
}

void datavisual2_2() {
  datacollet();
  if (dist(mouseX, mouseY, 566, 642)<40) {//hale
    pushStyle();
    stroke(255);
    // noStroke();
    fill(col0, 185);
    ellipse(mouseX+530, mouseY-86, 15, 15);
    textFont(myfont3);
    textSize(11);
    textAlign(LEFT);
    text("哈乐浓清水果店:    "+halef0/100+"元", mouseX+550, mouseY-80);
    arc(mouseX+600, mouseY-200, 160, 160, 0, TWO_PI*(halef0/hale), PIE);
    popStyle();
    fill(col1);
    ellipse(mouseX+600, mouseY-200, 120, 120);
    fill(col3);
    textFont(myfont3);
    text(currMonth+"月总营业额"+"\n"+hale/100+"元", mouseX+600, mouseY-200);
  }
  if (dist(mouseX, mouseY, 539, 538)<40) {//yican
    pushStyle();
    stroke(255);
    //noStroke();
    fill(col0, 230);
    ellipse(mouseX+530, mouseY-86, 15, 15);
    textFont(myfont3);
    textSize(11);
    textAlign(LEFT);
    text("一餐面包房:           "+mianbao1/100+"元", mouseX+550, mouseY-80);
    arc(mouseX+600, mouseY-200, 160, 160, 0, TWO_PI*(mianbao1/yican), PIE);
    fill(col0, 200);
    ellipse(mouseX+530, mouseY-86+interval, 15, 15);
    text("一餐梦园面包房:   "+mengyuan1/100+"元", mouseX+550, mouseY-80+interval);
    arc(mouseX+600, mouseY-200, 160, 160, TWO_PI*(mianbao1/yican), TWO_PI*(mianbao1/yican+mengyuan1/yican), PIE);
    fill(col0, 185);
    ellipse(mouseX+530, mouseY-86+interval*2, 15, 15);
    text("一餐甜魔咖啡:       "+timo1/100+"元", mouseX+550, mouseY-80+interval*2);
    arc(mouseX+600, mouseY-200, 160, 160, TWO_PI*(mianbao1/yican+mengyuan1/yican), TWO_PI*(mianbao1/yican+mengyuan1/yican+timo1/yican), PIE);
    fill(col0, 160);
    ellipse(mouseX+530, mouseY-86+interval*3, 15, 15);
    text("一餐达通水果店:   "+dtfruit1/100+"元", mouseX+550, mouseY-80+interval*3);
    arc(mouseX+600, mouseY-200, 160, 160, TWO_PI*(mianbao1/yican+mengyuan1/yican+timo1/yican), TWO_PI*(mianbao1/yican+mengyuan1/yican+timo1/yican+dtfruit1/yican), PIE);
    fill(col0, 135);
    ellipse(mouseX+530, mouseY-86+interval*4, 15, 15);
    text("一餐达通蔬菜店:   "+dtveg1/100+"元", mouseX+550, mouseY-80+interval*4);
    arc(mouseX+600, mouseY-200, 160, 160, TWO_PI*(mianbao1/yican+mengyuan1/yican+timo1/yican+dtfruit1/yican), TWO_PI*(mianbao1/yican+mengyuan1/yican+timo1/yican+dtfruit1/yican+dtveg1/yican), PIE);
    fill(col0, 110);
    ellipse(mouseX+530, mouseY-86+interval*5, 15, 15);
    text("一餐松叶蔬菜:        "+songye1/100+"元", mouseX+550, mouseY-80+interval*5);
    arc(mouseX+600, mouseY-200, 160, 160, TWO_PI*(mianbao1/yican+mengyuan1/yican+timo1/yican+dtfruit1/yican+dtveg1/yican), TWO_PI*(mianbao1/yican+mengyuan1/yican+timo1/yican+dtfruit1/yican+dtveg1/yican+songye1/yican), PIE);

    popStyle();
    fill(col1);
    ellipse(mouseX+600, mouseY-200, 120, 120);
    fill(col3);
    textFont(myfont3);
    text(currMonth+"月总营业额"+"\n"+yican/100+"元", mouseX+600, mouseY-200);
  }
  if (dist(mouseX, mouseY, 742, 310)<40) {//sancan
    pushStyle();    
    stroke(255);
    //noStroke();
    fill(col0, 185);
    ellipse(mouseX+450-100, mouseY-5+100, 15, 15);
    textFont(myfont3);
    textSize(11);
    textAlign(LEFT);
    text("三餐时光咖啡：   "+sg3/100+"元", mouseX+470-100, mouseY+100);
    arc(mouseX+520-100, mouseY-120+100, 160, 160, 0, TWO_PI*(sg3/sancan), PIE);
    popStyle();
    fill(col1);
    ellipse(mouseX+520-100, mouseY-120+100, 120, 120);
    fill(col3);
    textFont(myfont3);
    text(currMonth+"月总营业额"+"\n"+sancan/100+"元", mouseX+520-100, mouseY-120+100);
  }
  if (dist(mouseX, mouseY, 504, 300)<40) {//sican
    pushStyle();
    stroke(255);
    //noStroke();
    fill(col0, 200);
    ellipse(mouseX+530, mouseY-5+100, 15, 15);
    textFont(myfont3);
    textSize(11);
    textAlign(LEFT); 
    text("四餐百味林:            "+bwl4/100+"元", mouseX+550, mouseY+100);
    arc(mouseX+600, mouseY-120+100, 160, 160, 0, TWO_PI*(bwl4/sican), PIE);
    fill(col0, 175);
    ellipse(mouseX+530, mouseY-5+interval+100, 15, 15);
    text("四餐甜点:                "+td4/100+"元", mouseX+550, mouseY+interval+100);
    arc(mouseX+600, mouseY-120+100, 160, 160, TWO_PI*(bwl4/sican), TWO_PI*(bwl4/sican+td4/sican), PIE);
    fill(col0, 150);
    ellipse(mouseX+530, mouseY-5+100+interval*2, 15, 15);
    text("四餐面包房:            "+mianbao4/100+"元", mouseX+550, mouseY+interval*2+100);
    arc(mouseX+600, mouseY-120+100, 160, 160, TWO_PI*(bwl4/sican+td4/sican), TWO_PI*(bwl4/sican+td4/sican+mianbao4/sican ), PIE);
    fill(col0, 120);
    ellipse(mouseX+530, mouseY-5+100+interval*3, 15, 15);
    text("四餐达通水果店:    "+dtfruit4/100+"元", mouseX+550, mouseY+interval*3+100);
    arc(mouseX+600, mouseY-120+100, 160, 160, TWO_PI*(bwl4/sican+td4/sican+mianbao4/sican), TWO_PI);
    popStyle();
    fill(col1);
    ellipse(mouseX+600, mouseY-120+100, 120, 120);
    fill(col3);
    textFont(myfont3);
    text(currMonth+"月总营业额"+"\n"+sican/100+"元", mouseX+600, mouseY-120+100);
  }
}

//void datashow2() {
//  if (dist(mouseX, mouseY, 566, 642)<40) {
//    fill(col3);
//    textFont(myfont3);
//    text(currMonth+"月营业额"+hale/100+"元", mouseX+75, mouseY);
//  }
//  if (dist(mouseX, mouseY, 539, 538)<40) {
//    fill(col3);
//    textFont(myfont3);
//    text(currMonth+"月营业额"+yican/100+"元", mouseX+75, mouseY);
//  }
//  if (dist(mouseX, mouseY, 742, 310)<40) {
//    fill(col3);
//    textFont(myfont3);
//    text(currMonth+"月营业额"+sancan/100+"元", mouseX+75, mouseY);
//  }  
//  if (dist(mouseX, mouseY, 504, 300)<40) {
//    fill(col3);
//    textFont(myfont3);
//    text(currMonth+"月营业额"+sican/100+"元", mouseX+75, mouseY);
//  }
//}

void datacollet() {
  switch(currMonth) {
  case 9:
    mianbao1=prow9_2[0];
    mengyuan1=prow9_2[1];
    timo1=prow9_2[2];
    dtfruit1=prow9_2[3];
    dtveg1=prow9_2[4];
    songye1=prow9_2[5];
    sg3=prow9_2[6];
    bwl4=prow9_2[7];
    td4=prow9_2[8];
    mianbao4=prow9_2[9];
    dtfruit4=prow9_2[10];
    halef0=prow9_2[11];
    break;
  case 10:
    mianbao1=prow10_2[0];
    mengyuan1=prow10_2[1];
    timo1=prow10_2[2];
    dtfruit1=prow10_2[3];
    dtveg1=prow10_2[4];
    songye1=prow10_2[5];
    sg3=prow10_2[6];
    bwl4=prow10_2[7];
    td4=prow10_2[8];
    mianbao4=prow10_2[9];
    dtfruit4=prow10_2[10];
    halef0=prow10_2[11];
    break;
  case 11:
    mianbao1=prow11_2[0];
    mengyuan1=prow11_2[1];
    timo1=prow11_2[2];
    dtfruit1=prow11_2[3];
    dtveg1=prow11_2[4];
    songye1=prow11_2[5];
    sg3=prow11_2[6];
    bwl4=prow11_2[7];
    td4=prow11_2[8];
    mianbao4=prow11_2[9];
    dtfruit4=prow11_2[10];
    halef0=prow11_2[11];
    break;
  case 12:
    mianbao1=prow12_2[0];
    mengyuan1=prow12_2[1];
    timo1=prow12_2[2];
    dtfruit1=prow12_2[3];
    dtveg1=prow12_2[4];
    songye1=prow12_2[5];
    sg3=prow12_2[6];
    bwl4=prow12_2[7];
    td4=prow12_2[8];
    mianbao4=prow12_2[9];
    dtfruit4=prow12_2[10];
    halef0=prow12_2[11];
    break;
  case 1:
    mianbao1=prow1_2[0];
    mengyuan1=prow1_2[1];
    timo1=prow1_2[2];
    dtfruit1=prow1_2[3];
    dtveg1=prow1_2[4];
    songye1=prow1_2[5];
    sg3=prow1_2[6];
    bwl4=prow1_2[7];
    td4=prow1_2[8];
    mianbao4=prow1_2[9];
    dtfruit4=prow1_2[10];
    halef0=prow1_2[11];
    break;
  }
}

void myShape(int s, int f, int dir, int n, int v) {
  if (s == 0) {
    noStroke();
  } else {
    stroke(col0);
  }
  fill(f);
  beginShape();
  for (int i=0; i<num; i++) {
    float angle = TWO_PI/num*i;
    float minV = map(sin(dir*theta+dir*angle*3), -1, 1, 15, 150);
    float d = map(sin(angle*n), -1, 1, minV, 220+v);
    float x = cos(angle)*d;
    float y = sin(angle)*d;
    vertex(x, y);
  }
  endShape(CLOSE);
}


class Month {

  int month;
  int[] m = {9, 10, 11, 12, 01};
  PVector[] pos = new PVector[4];
  float monthbuttonD = 53;
  float yy=792+monthbuttonD/2;
  PVector button[]=new PVector[5];
  {
    button[0]=new PVector(1017+monthbuttonD/2, yy);
    button[1]=new PVector(1017+monthbuttonD/2+(27+monthbuttonD), yy);
    button[2]=new PVector(1017+monthbuttonD/2+(27+monthbuttonD)*2, yy);
    button[3]=new PVector(1017+monthbuttonD/2+(27+monthbuttonD)*3, yy);
    button[4]=new PVector(1017+monthbuttonD/2+(27+monthbuttonD)*4, yy);
  }
  boolean selected;

  Month() {
  } 

  void display() {
    //button
    if (page==2) {
      for (int i =0; i<5; i++) {
        if (currMonth == m[i]) {
          noStroke();
          fill(col3);
          ellipse(button[i].x, button[i].y, monthbuttonD, monthbuttonD);
          fill(col0);
          textAlign(CENTER, CENTER);
          textFont(myfont1);
          textSize(30);
          text(m[i], button[i].x, button[i].y);
        } else {
          noStroke();
          fill(col0);
          ellipse(button[i].x, button[i].y, monthbuttonD, monthbuttonD);
          fill(255);
          textAlign(CENTER, CENTER);
          textFont(myfont1);
          textSize(30); 
          text(m[i], button[i].x, button[i].y);
        }
      }
    }
    if (page==1) {
      for (int i =1; i<4; i++) {
        if (currMonth == m[i]) {
          noStroke();
          fill(col3);
          ellipse(button[i].x, button[i].y, monthbuttonD, monthbuttonD);
          fill(col0);
          textAlign(CENTER, CENTER);
          textFont(myfont1);
          textSize(30);
          text(m[i], button[i].x, button[i].y);
        } else {
          noStroke();
          fill(col1);
          ellipse(button[i].x, button[i].y, monthbuttonD, monthbuttonD);
          fill(col2);
          textAlign(CENTER, CENTER);
          textFont(myfont1);
          textSize(30); 
          text(m[i], button[i].x, button[i].y);
        }
      }
    }
    if (page==3) {
      for (int i =0; i<5; i++) {
        if (currMonth == m[i]) {
          noStroke();
          fill(col3);
          ellipse(button[i].x, button[i].y, monthbuttonD, monthbuttonD);
          fill(col0);
          textAlign(CENTER, CENTER);
          textFont(myfont1);
          textSize(30);
          text(m[i], button[i].x, button[i].y);
        } else {
          noStroke();
          fill(col1);
          ellipse(button[i].x, button[i].y, monthbuttonD, monthbuttonD);
          fill(col2);
          textAlign(CENTER, CENTER);
          textFont(myfont1);
          textSize(30); 
          text(m[i], button[i].x, button[i].y);
        }
      }
    }
  }


  //void toggle(boolean conclusion) {
  //  if (conclusion==true) {
  //    /// col = color(255);
  //  } else {
  //    // col = color(100);
  //  }
  //  println("a toggle event.");
  //}

  //  void setValues() {
  //    //for (int i =0; i<5; i++) {
  //    //  button[i].y = 792+monthbuttonD/2;
  //    //}
  //    button[0].x = 1017+monthbuttonD/2;
  //    for (int i =1; i<5; i++) {
  //      button[i].x = 1017+monthbuttonD/2+(27+monthbuttonD)*i;
  //    }
  //  }
  //}
}
