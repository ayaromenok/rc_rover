include <../lib/lib2.scad>


/*
yTube(3.5,1,5,    30,24.5,0);
yTube(3.5,1,5,    30,-24.5,0);
yTube(3.5,1,5,    -36,21.5,0);
yTube(3.5,1,5,    -36,-21.5,0);
yCube(65,3,1,   -2.5,23,-2);
yCube(65,3,1,   -2.5,-23,-2);
yCube(3,40,1,    -35,0,-2);
yCube(3,48,1,    30,0,-2);
//*/
blue_chassis(isLeft=false);

module blue_chassis(px=0,py=0,pz=0, rx=0,ry=0,rz=0, isLeft=false){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        difference(){
            yCube(120, 60,30, 0,0,-5);
            yCube(130,40,20,    0,0,-4); //battery S2
            yCube(120,56,50,    15,0,25); //blue
        }//difference
        //65x42/50
        yTube(3.5,0.8,7,    30,24.5,1);
        yTube(3.5,0.8,7,    30,-24.5,1);
        yTube(3.5,0.8,7,    -36,21.5,1);
        yTube(3.5,0.8,7,    -36,-21.5,1);
        yCone(3.5,6,    -36,-21.5,-5.5,  180,0,0);
        yCone(3.5,6,    -36,21.5,-5.5,  180,0,0);
    }//transform
    yCube(10,5,30,  -55,0,-5);
}//module  


        