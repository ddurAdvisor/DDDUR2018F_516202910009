//color col5=color(250, 213, 175);//dancheng
color col6=color(243, 169, 123);//shen
color col7=color(255, 194, 131);//zhong
int cm;
int mode;

Label la=new Label();
void page3() {
  image(page3, 0, 0);
  pagechangerUI1();
  m1.display();
  drawpie();
  la.display();
  dataShowww();
  find();
}

void find() {
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
    text("女生更爱咖啡饮料", 1167-18, 117+25);
    text("比男生偏爱面包甜点", 1167-18, 178+25);
    text("面包甜点的普遍需求大", 1167-18, 239+25);
  }
  popStyle();
}


void dataShowww() {
  if (mouseX>191&&mouseY>216&&mouseX<191+341&&mouseY<216+457) {
    switch(mode) {  
    case 0:
      pushStyle();
      textFont(myfont1);
      textSize(16);
      textAlign(LEFT);
      fill(col5);
      text(l1[cm][0], 422, 549);
      fill(col6);
      text(l1[cm][1], 260, 359);
      popStyle();
      break;
    case 1:
      pushStyle();
      textFont(myfont1);
      textSize(16);
      textAlign(LEFT);
      fill(col5);
      text(l1[cm][2], 422, 544);
      fill(col7);
      text(l1[cm][3], 357, 313);
      fill(col6);
      text(l1[cm][4], 458, 366);
      popStyle();
      break;
    }
  }

  if (mouseX>568&&mouseY>216&&mouseX<568+341&&mouseY<216+457) {
    switch(mode) {  
    case 0:
      pushStyle();
      textFont(myfont1);
      textSize(16);
      textAlign(LEFT);
      fill(col5);
      text(l2[cm][0], 422+377, 549);
      fill(col6);
      text(l2[cm][1], 260+377, 359);
      popStyle();
      break;
    case 1:
      pushStyle();
      textFont(myfont1);
      textSize(16);
      textAlign(LEFT);
      fill(col5);
      text(l2[cm][2], 422+377, 544);
      fill(col7);
      text(l2[cm][3], 357+377, 313);
      fill(col6);
      text(l2[cm][4], 458+377, 366);
      popStyle();
      break;
    }
  }

  if (mouseX>945&&mouseY>216&&mouseX<945+341&&mouseY<216+457) {
    switch(mode) {  
    case 0:
      pushStyle();
      textFont(myfont1);
      textSize(16);
      textAlign(LEFT);
      fill(col5);
      text(l3[cm][0], 422+377*2, 549);
      fill(col6);
      text(l3[cm][1], 260+377*2, 359);
      popStyle();
      break;
    case 1:
      pushStyle();
      textFont(myfont1);
      textSize(16);
      textAlign(LEFT);
      fill(col5);
      text(l3[cm][2], 422+377*2, 544);
      fill(col7);
      text(l3[cm][3], 357+377*2, 313);
      fill(col6);
      text(l3[cm][4], 458+377*2, 366);
      popStyle();
      break;
    }
  }
}

void drawpie() {
  int ii=189+188;
  float dd=188;
  if (currMonth<9) {
    cm=4;
  } else {
    cm=currMonth-9;
  }

  switch(mode) {  
  case 0:
    image(page3ui1, 0, 0);
    pushStyle();
    noStroke();
    //

    fill(col5);
    arc(268+188/2, 356+188/2, dd, dd, 0, TWO_PI*l1[cm][0]/(l1[cm][0]+l1[cm][1]), PIE);
    fill(col6);
    arc(268+188/2, 356+188/2, dd, dd, TWO_PI*l1[cm][0]/(l1[cm][0]+l1[cm][1]), TWO_PI, PIE);
    //
    fill(col5);
    arc(268+188/2+ii, 356+188/2, dd, dd, 0, TWO_PI*l2[cm][0]/(l2[cm][0]+l2[cm][1]), PIE);
    fill(col6);
    arc(268+188/2+ii, 356+188/2, dd, dd, TWO_PI*l2[cm][0]/(l2[cm][0]+l2[cm][1]), TWO_PI, PIE);
    //
    fill(col5);
    arc(268+188/2+ii*2, 356+188/2, dd, dd, 0, TWO_PI*l3[cm][0]/(l3[cm][0]+l3[cm][1]), PIE);
    fill(col6);
    arc(268+188/2+ii*2, 356+188/2, dd, dd, TWO_PI*l3[cm][0]/(l3[cm][0]+l3[cm][1]), TWO_PI, PIE);
    popStyle();
    break;
  case 1:
    image(page3ui2, 0, 0);
    pushStyle();
    noStroke();
    //1
    fill(col5);
    arc(268+188/2, 356+188/2, dd, dd, 0, TWO_PI*l1[cm][2]/(l1[cm][2]+l1[cm][3]+l1[cm][4]), PIE);
    fill(col7);
    arc(268+188/2, 356+188/2, dd, dd, TWO_PI*l1[cm][2]/(l1[cm][2]+l1[cm][3]+l1[cm][4]), TWO_PI*(l1[cm][2]+l1[cm][3])/(l1[cm][2]+l1[cm][3]+l1[cm][4]), PIE);
    fill(col6);
    arc(268+188/2, 356+188/2, dd, dd, TWO_PI*(l1[cm][2]+l1[cm][3])/(l1[cm][2]+l1[cm][3]+l1[cm][4]), TWO_PI, PIE);
    //2
    fill(col5);
    arc(268+188/2+ii, 356+188/2, dd, dd, 0, TWO_PI*l2[cm][2]/(l2[cm][2]+l2[cm][3]+l2[cm][4]), PIE);
    fill(col7);
    arc(268+188/2+ii, 356+188/2, dd, dd, TWO_PI*l2[cm][2]/(l2[cm][2]+l2[cm][3]+l2[cm][4]), TWO_PI*(l2[cm][2]+l2[cm][3])/(l2[cm][2]+l2[cm][3]+l2[cm][4]), PIE);
    fill(col6);
    arc(268+188/2+ii, 356+188/2, dd, dd, TWO_PI*(l2[cm][2]+l2[cm][3])/(l2[cm][2]+l2[cm][3]+l2[cm][4]), TWO_PI, PIE);
    //3
    fill(col5);
    arc(268+188/2+ii*2, 356+188/2, dd, dd, 0, TWO_PI*l3[cm][2]/(l3[cm][2]+l3[cm][3]+l3[cm][4]), PIE);
    fill(col7);
    arc(268+188/2+ii*2, 356+188/2, dd, dd, TWO_PI*l3[cm][2]/(l3[cm][2]+l3[cm][3]+l3[cm][4]), TWO_PI*(l3[cm][2]+l3[cm][3])/(l3[cm][2]+l3[cm][3]+l3[cm][4]), PIE);
    fill(col6);
    arc(268+188/2+ii*2, 356+188/2, dd, dd, TWO_PI*(l3[cm][2]+l3[cm][3])/(l3[cm][2]+l3[cm][3]+l3[cm][4]), TWO_PI, PIE);
    popStyle();
    break;
  }
}

class Label {
  int label;
  int ll[]={0, 1};
  int rdd=40;
  PVector labelbutton[]=new PVector[2];
  {
    labelbutton[0]=new  PVector (60, 376);
    labelbutton[1]=new  PVector (60, 432);
  }  
  boolean laselected;
  Label() {
  }
  void display() {
    for (int i=0; i<2; i++) {
      if (mode==ll[i]) {
        noStroke();
        fill(col1);
        rect(labelbutton[i].x, labelbutton[i].y, rdd, rdd);
      } else {
        noStroke();
        fill(col4 );
        rect(labelbutton[i].x, labelbutton[i].y, rdd, rdd);
      }
    }
  }
}
