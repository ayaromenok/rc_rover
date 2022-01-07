include <../lib/lib2.scad>



blue_chassis_battery_2S();

module blue_chassis_battery_2S(px=0,py=0,pz=0, rx=0,ry=0,rz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        difference(){
            yCube(130, 54,20, 0,0,-10);
            yCube(110,40,20,    0,0,-7); //battery S2
            //holes for battery
            yCube(20,14,10,  57,13,-10);
            yCube(20,14,10,  57,-13,-10);
            yCube(20,14,10,  -57,13,-10);
            yCube(20,14,10,  -57,-13,-10);            
            //holes to chassis
            for(i=[-40:20:40]){
                yCyl(1.5,10,    i,10,-20);            
                yCyl(1.5,10,    i,-10,-20);
            }//for
        }//difference
        
            
        for(i=[-60:40:60]){
            screw_top_M2_5(i,30,-18);
            screw_top_M2_5(i,-30,-18);
            
        }//for        
        for(i=[-40:40:40]){
            screw_bot_M2_5(i,30,0);
            screw_bot_M2_5(i,-30,0, 0,0,180);
        }//for
    }//transform    
}//module  


module screw_top_M2_5(px=0,py=0,pz=0, rx=0,ry=0,rz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        difference(){
            yTube(4,1.5,4);
            yCone(4,5,  0,0,0, 0,180,0);
        }//difference
    }//transform    
}//module  
module screw_bot_M2_5(px=0,py=0,pz=0, rx=0,ry=0,rz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){  
            yTube(4,0.8,6, 0,0,-3);
            difference(){
                yCone(5,9, 0,-2.2,-8.6, 20,180,0);  
                yCube(10,10,10, 0,0,-1);
            }//difference
    }//transform    
}//module  

module blue_chassis(px=0,py=0,pz=0, rx=0,ry=0,rz=0){
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


        