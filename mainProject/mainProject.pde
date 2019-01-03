import controlP5.*;

ControlP5 cp5;

PImage startscreen00, startscreen01, startscreen02, page1, page2, page3,page3ui1,page3ui2;
PFont myfont1, myfont2, myfont3;
Table page1hale, page1yican, page1sancan, page1sican, page2table, page3table;
float yy1=655;
float yy2=613;
float a =10;
//page2
float prow9_1[]=new float [17];
float prow9_2[]=new float [17];
float prow10_1[]=new float [17];
float prow10_2[]=new float [17];
float prow11_1[]=new float [17];
float prow11_2[]=new float [17];
float prow12_1[]=new float [17];
float prow12_2[]=new float [17];
float prow1_1[]=new float [17];
float prow1_2[]=new float [17];
int hl[][]=new int[3][18];
int hl0[][]=new int[3][18];
int yc[][]=new int[3][18];
int yc0[][]=new int[3][18];
int sc[][]=new int[3][18];
int sc0[][]=new int[3][18];
int sic[][]=new int[3][18];
int sic0[][]=new int[3][18];
int page=0;
int l1[][]=new int[5][5];
int l2[][]=new int[5][5];
int l3[][]=new int[5][5];
//int type=0;
color colors[] = {color(243, 169, 123, 150), color(244, 227, 199, 150), color(255, 194, 131, 150)};
//float ll1,ll2,ll3,ll4;

void setup() {
  size(1440, 900);
  smooth();
  cp5 = new ControlP5(this);

  myfont1 = createFont("Seravek-BoldItalic.otf", 32);
  myfont2 = createFont("Avenir.ttc", 32);
  myfont3 = createFont("NotoSansHans-Bold.otf", 16);
  loadimage();
  loaddata();
  //if (page==2) {
  //  cp5.setColorBackground(col2);
  //  cp5.setColorActive(col3);
  //  cp5.setColorValueLabel(col2);
  //  cp5.addToggle("CONCLUSION")
  //    .setPosition(50, 842)
  //    .setSize(50, 20)
  //    .setValue(false)
  //    .setMode(ControlP5.SWITCH);
  //}
}


void draw() {
  changeScreen();
  //startScreen();
  //page2();
}


void mouseReleased() {
  //if (page==0) {
  if (mouseX>1130&&mouseX<1440-42&&mouseY>673&&mouseY<900-169) {
    page=1;
  }

  //if (page==2) {
  //change month
  for (int i=0; i<5; i++) {
    if (dist(mouseX, mouseY, m1.button[i].x, m1.button[i].y) < m1.monthbuttonD/2) {
      m1.selected = true;
      println(m1.selected);

      m1.month=m1.m[i];
      currMonth = m1.month;
      println(currMonth);
    } else {
      m1.selected = false;
    }
  }

  ///change place1
  for (int i=0; i<4; i++) {
    if (dist(mouseX, mouseY, pp.place1button[i].x+pp.placebuttonD/2, pp.place1button[i].y+pp.placebuttonD/2) < pp.placebuttonD/2) {
      pp.p1selected = true;
      println(pp.p1selected);
      pp.place1=pp.p1[i];
      placechoose1 = pp.place1;
      println(placechoose1);
    } else {
      pp.p1selected = false;
    }
  }
  //change place2
  for (int i=0; i<4; i++) {
    if (dist(mouseX, mouseY, pp.place2button[i].x+pp.placebuttonD/2, pp.place2button[i].y+pp.placebuttonD/2) < pp.placebuttonD/2) {
      pp.p2selected = true;
      println(pp.p2selected);
      pp.place2=pp.p2[i];
      placechoose2 = pp.place2;
      println(placechoose2);
    } else {
      pp.p2selected = false;
    }
  }

//change mode
for (int i=0; i<2; i++) {
    if (dist(mouseX, mouseY, la.labelbutton[i].x+la.rdd/2, la.labelbutton[i].y+la.rdd/2) < la.rdd/2) {
      la.laselected = true;
      println(la.laselected);
      la.label=la.ll[i];
      mode = la.label;
      println(mode);
    } else {
      la.laselected = false;
    }
  }
  
  
  //change page
  if (dist(mouseX, mouseY, 50+d/2, 48+d/2)<=d/2) {
    page=1;
  }
  if (dist(mouseX, mouseY, 50+d/2, 48+d/2+(d+30))<=d/2) {
    page=2;
  }  
  if (dist(mouseX, mouseY, 50+d/2, 48+d/2+(d+30)*2)<=d/2) {    
    page=3;
  }
}
//}
//}

void changeScreen() {
  switch(page) {
  case 0:
    startScreen();
    break;
  case 1:
    page1();
    break;
  case 2:
    page2();
    break;
  case 3:
    page3();
    break;
  }
}

void startScreen() {
  image(startscreen00, 0, 0);
  //animate2();
  animate1();
  image(startscreen01, 0, 0);

  if (mouseX>1130&&mouseX<1440-42&&mouseY>673&&mouseY<900-169) {
    image(startscreen02, 0, 0);
  }
}

void loaddata() {
  //page1
  page1hale=loadTable("hale.csv", "header");

  page1sancan=loadTable("sancan.csv", "header");
  page1sican=loadTable("sican.csv", "header");
  for (TableRow row1 : page1hale.rows()) {
    int time=row1.getInt("hour")-5;//////////5点-22点的数据存在【0】-【17】里
    String date=row1.getString("V4");
    int place=row1.getInt("VAR00002");
    if (date.equals("10/17/2014")&&place==0) {
      hl[0][time]+=1;
    } else if (date.equals("10/17/2014")&&place==10) {
      hl0[0][time]+=1;
    }
    if (date.equals("11/7/2014")&&place==0) {
      hl[1][time]+=1;
    } else if (date.equals("11/7/2014")&&place==10) {
      hl0[1][time]+=1;
    }    
    if (date.equals("12/27/2014")&&place==0) {
      hl[2][time]+=1;
    } else if (date.equals("12/27/2014")&&place==10) {
      hl0[2][time]+=1;
    }
  }

  page1yican=loadTable("yican.csv", "header");
  for (TableRow row2 : page1yican.rows()) {
    int time=row2.getInt("hour")-5;//////////5点-22点的数据存在【0】-【17】里
    String date=row2.getString("V4");
    int place=row2.getInt("VAR00002");
    if (date.equals("10/17/2014")&&place==1) {
      yc[0][time]+=1;
    } else if (date.equals("10/17/2014")&&place==11) {
      yc0[0][time]+=1;
    }

    if (date.equals("11/7/2014")&&place==1) {
      yc[1][time]+=1;
    } else if (date.equals("11/7/2014")&&place==11) {
      yc0[1][time]+=1;
    }    
    if (date.equals("12/27/2014")&&place==1) {
      yc[2][time]+=1;
    } else if (date.equals("12/27/2014")&&place==11) {
      yc0[2][time]+=1;
    }
  }

  for (TableRow row3 : page1sancan.rows()) {
    int time=row3.getInt("hour")-5;//////////5点-22点的数据存在【0】-【17】里
    String date=row3.getString("V4");
    int place=row3.getInt("VAR00002");
    if (date.equals("10/17/2014")&&place==3) {
      sc[0][time]+=1;
    } else if (date.equals("10/17/2014")&&place==13) {
      sc0[0][time]+=1;
    }
    if (date.equals("11/7/2014")&&place==3) {
      sc[1][time]+=1;
    } else if (date.equals("11/7/2014")&&place==13) {
      sc0[1][time]+=1;
    }    
    if (date.equals("12/27/2014")&&place==3) {
      sc[2][time]+=1;
    } else if (date.equals("12/27/2014")&&place==13) {
      sc0[2][time]+=1;
    }
  }

  for (TableRow row4 : page1sican.rows()) {
    int time=row4.getInt("hour")-5;//////////5点-22点的数据存在【0】-【17】里
    String date=row4.getString("V4");
    int place=row4.getInt("VAR00002");
    if (date.equals("10/17/2014")&&place==4) {
      sic[0][time]+=1;
    } else if (date.equals("10/17/2014")&&place==14) {
      sic0[0][time]+=1;
    }
    if (date.equals("11/7/2014")&&place==4) {
      sic[1][time]+=1;
    } else if (date.equals("11/7/2014")&&place==14) {
      sic0[1][time]+=1;
    }    
    if (date.equals("12/27/2014")&&place==4) {
      sic[2][time]+=1;
    } else if (date.equals("12/27/2014")&&place==14) {
      sic0[2][time]+=1;
    }
  }
  //page3
  page3table=loadTable("page33.csv", "header");
  for (TableRow row5 : page3table.rows()) {
    String label=row5.getString("商家类型");
    int month=row5.getInt("月份");
    if (month<9) {
      month=4;
    } else {
      month=month-9;
    }
    String gender=row5.getString("性别");
    String bachelor=row5.getString("学位");
    int sales=row5.getInt("成交笔数");
    if (label.equals("咖啡")&&gender.equals("女")) {
      l1[month][0]=sales;
    } 
    if (label.equals("咖啡")&&gender.equals("男")) {
      l1[month][1]=sales;
    } 
    if (label.equals("咖啡")&&bachelor.equals("本科")) {
      l1[month][2]=sales;
    } 
    if (label.equals("咖啡")&&bachelor.equals("博士")) {
      l1[month][3]=sales;
    }
    if (label.equals("咖啡")&&bachelor.equals("硕士")) {
      l1[month][4]=sales;
    } 
    if (label.equals("面包")&&gender.equals("女")) {
      l2[month][0]=sales;
    } 
    if (label.equals("面包")&&gender.equals("男")) {
      l2[month][1]=sales;
    } 
    if (label.equals("面包")&&bachelor.equals("本科")) {
      l2[month][2]=sales;
    } 
    if (label.equals("面包")&&bachelor.equals("博士")) {
      l2[month][3]=sales;
    }
    if (label.equals("面包")&&bachelor.equals("硕士")) {
      l2[month][4]=sales;
    }

    if (label.equals("蔬果")&&gender.equals("女")) {
      l3[month][0]=sales;
    } 
    if (label.equals("蔬果")&&gender.equals("男")) {
      l3[month][1]=sales;
    } 
    if (label.equals("蔬果")&&bachelor.equals("本科")) {
      l3[month][2]=sales;
    } 
    if (label.equals("蔬果")&&bachelor.equals("博士")) {
      l3[month][3]=sales;
    }
    if (label.equals("蔬果")&&bachelor.equals("硕士")) {
      l3[month][4]=sales;
    }
  }println(l2[2][0]);


  //page2
  page2table=loadTable("page2.csv", "header");
  for (int i=0; i<17; i++) {
    TableRow row=page2table.getRow(i);
    prow9_1[i]=row.getInt("9月笔数");
    prow9_2[i]=row.getInt("9月营业额");
    prow10_1[i]=row.getInt("10月笔数");
    prow10_2[i]=row.getInt("10月营业额");
    prow11_1[i]=row.getInt("11月笔数");
    prow11_2[i]=row.getInt("11月营业额");
    prow12_1[i]=row.getInt("12月笔数");
    prow12_2[i]=row.getInt("12月营业额");
    prow1_1[i]=row.getInt("1月笔数");
    prow1_2[i]=row.getInt("1月营业额");
  }

  //for (int i=0; i<17; i++) {
  // println(prow9_1[i]);
  //}
  println(prow9_1[13]);
}

void loadimage() {
  startscreen00=loadImage("startscreen00.png");
  startscreen01=loadImage("startscreen01.png");
  startscreen02=loadImage("startscreen02.png");
  page1=loadImage("page1.png");
  page2=loadImage("page2.png");
  page3=loadImage("page3.png");
  page3ui1=loadImage("page3ui1.png");
    page3ui2=loadImage("page3ui2.png");
}

void animate1() {
  noStroke();
  fill(#FFC283, 130);
  rect(0, yy1, 639, 167);
  yy1-=a;
  if (yy1<=0||yy1>=733) {
    a=-a;
  }
  noStroke();
  fill(#FFC283, 230);
  rect(0, yy2, 166, 167);
  yy2-=0.8*a;
  if (yy2<=0||yy2>=733) {
    a=-a;
  }
}

//void animate2(){
//rectMode(CORNER);
//noStroke();
//fill(colors[1]);
//rect(width,76,ll1,21);
//fill(colors[2]);
//rect(width,117,ll2,21);
//fill(colors[3]);
//rect(width,158,ll3,21);
//fill(colors[2]);
//rect(width,199,ll4,21);
//}
//void animate2() { 
//  noFill();
//  smooth();
//  strokeWeight(13);
//  for (int i = 0; i <3; i++) {
//    stroke(colors[i]);
//    beginShape();
//    for (int w = -20; w < width + 20; w += 5) {
//      int h = height / 5;
//      h += 60 * sin(w * 0.007 + frameCount * 0.05 + i * TWO_PI /3) * pow(abs(sin(w * 0.001 + frameCount * 0.02)), 5);
//      curveVertex(w, h);
//    }    
//    endShape();
//  }
//}
