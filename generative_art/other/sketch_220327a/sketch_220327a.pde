int xstart = 0;
int xend = 0;
int ystart = 0;
int yend = 180;
int zstart = 0;
int zend = 180;

int spacing = 20;

int xcount = 0;
int ycount = 0;
int zcount = 0;




void setup() {
  
 size(1200, 800, P3D); 
 for (int x = xstart; x < xend; x += spacing) { 
   print("xcount =");
   println(xcount);
   for (int y = ystart; y < yend; y += spacing) {
     print("ycount =");
     println(ycount);
     for (int z = zstart; z < zend; y += spacing) {
       print("zcount =");
       println(zcount); 
     }
     zcount += 1;
   }
   ycount += 1;
 }
 xcount += 1;
}
