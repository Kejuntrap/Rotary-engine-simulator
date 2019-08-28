int rt_cx;    //rotery center x
int rt_cy;    //rotery center y

int base_r;
int ig_r;    //inner gear radius
int st_r;    //stationally gear radius
int di_r;    //difference between ig_r and st_r

float rot_cen_posx,rot_cen_posy;  //rotation center point


float base_rt=0.5;  //base rotatetion degree volume
float now_rt;    //now rotation degree

float r;

float pi=(float)Math.PI;

int i;

float dw,dh;

int fps;

int[] grp=new int[100];


void setup(){
  //size(displayWidth, displayHeight);
  size(800,800);
  background(0);
  frameRate(30);
  noFill();
  
  dw=width;
  dh=height;
  
  base_r=25;
  
  
  ig_r=base_r*3;  st_r=base_r*2; di_r=base_r;
  rt_cx=400-st_r; rt_cy=400-st_r;
  r=7.5*base_r;
  now_rt=0;  
  
}

void draw(){
  background(0);
  noFill();
  strokeWeight(1);
  stroke(#FFFFFF);
  
  rot_cen_posx = width/2-st_r;
  rot_cen_posy = height/2-st_r;
  
  now_rt+=(base_rt*3);
  
  
  
  ellipse(rt_cx+st_r,rt_cy+st_r,st_r*2,st_r*2);    //stationally gear
  ellipse(rt_cx+st_r+di_r*cos((now_rt*3)*pi/180) , rt_cy+st_r+di_r*sin((now_rt*3)*pi/180) , ig_r*2 , ig_r*2);    //inner gear
  ellipse(rt_cx+st_r , rt_cy+st_r , di_r*2 , di_r*2 );    //excentric gear
  arc(rt_cx+st_r+di_r*cos((now_rt*3)*pi/180)+r*cos((now_rt+60)*pi/180) , rt_cy+st_r+di_r*sin((now_rt*3)*pi/180)+r*sin((now_rt+60)*pi/180) , r*cos(30*pi/180)*4, r*cos(30*pi/180)*4, ((now_rt+210)/180)*pi , ((now_rt+270)/180)*pi);    //roter line 1
  arc(rt_cx+st_r+di_r*cos((now_rt*3)*pi/180)+r*cos((now_rt+180)*pi/180) , rt_cy+st_r+di_r*sin((now_rt*3)*pi/180)+r*sin((now_rt+180)*pi/180) , r*cos(30*pi/180)*4, r*cos(30*pi/180)*4, ((now_rt-30)/180)*pi , ((now_rt+30)/180)*pi);    //roter line 1
  arc(rt_cx+st_r+di_r*cos((now_rt*3)*pi/180)+r*cos((now_rt+300)*pi/180) , rt_cy+st_r+di_r*sin((now_rt*3)*pi/180)+r*sin((now_rt+300)*pi/180) , r*cos(30*pi/180)*4, r*cos(30*pi/180)*4, ((now_rt+90)/180)*pi , ((now_rt+150)/180)*pi);    //roter line 1
  
  i=0;
  while(i<1080){        //roter housing
    point(rt_cx+st_r+di_r*cos((i)*pi/180)+r*cos((i+180)*pi/540) , rt_cy+st_r+di_r*sin(i*pi/180)+r*sin((i+180)*pi/540));
    i++;
  }
  strokeWeight(1);

  strokeWeight(10);
  point(rt_cx+st_r+di_r*cos((now_rt*3)*pi/180),rt_cy+st_r+di_r*sin((now_rt*3)*pi/180));
  
  point(rt_cx+st_r+di_r*cos((now_rt*3)*pi/180)+r*cos((now_rt+60)*pi/180) , rt_cy+st_r+di_r*sin((now_rt*3)*pi/180)+r*sin((now_rt+60)*pi/180));
  point(rt_cx+st_r+di_r*cos((now_rt*3)*pi/180)+r*cos((now_rt+180)*pi/180) , rt_cy+st_r+di_r*sin((now_rt*3)*pi/180)+r*sin((now_rt+180)*pi/180));
  point(rt_cx+st_r+di_r*cos((now_rt*3)*pi/180)+r*cos((now_rt+300)*pi/180) , rt_cy+st_r+di_r*sin((now_rt*3)*pi/180)+r*sin((now_rt+300)*pi/180));
  strokeWeight(1);
}
