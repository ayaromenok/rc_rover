include <../lib/lib2.scad>



blue_chassis_board();
//blue_chassis_battery_2S(0,0,-20);


module blue_chassis_board(px=0,py=0,pz=0, rx=0,ry=0,rz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        difference(){
            yCube(130, 60,30, 0,0,-5);            
            yCube(140,56,30,    0,0,0); //blue
            for(i=[-40:40:40]){
                yCyl(4,14,  i,32.5,-9.5, -15,0,0);
                yCyl(4,5.5,  i,30,-18, 0,0,0);
                yCyl(4,14,  i,-32.5,-9.5, 15,0,0);
                yCyl(4,5,  i,-30,-18, 0,0,0);
            }//for
            for(i=[-60:20:60]){
                yCyl(0.8,6,  i,30,8);
                yCyl(0.8,6,  i,-30,8);
                 
                yCyl(1.5,10,  i,10,-18); 
                yCyl(1.5,10,  i,-10,-18);
               yCyl(5,70, i+10,0,-2,   90,0,0, sy=2, $fn=6); 
            }//for
        }//difference
        
        //65x42/50
        yTube(3.5,0.8,7,    30,24.5,-15);
        yTube(3.5,0.8,7,    30,-24.5,-15);
        yTube(3.5,0.8,7,    -36,21.5,-15);
        yTube(3.5,0.8,7,    -36,-21.5,-15);        
        //bottom
        for(i=[-40:40:40]){
            screw_top_M2_5(i,30,-18);
            screw_top_M2_5(i,-30,-18);            
        }//for        
        //top
        difference(){
            yCyl(4.5,130,  0,30,8,  0,90,0, $fn=3);
            for(i=[-60:20:60]){
                yCyl(0.8,6,  i,30,8);            
            }//for
        }//difference
        difference(){
            yCyl(4.5,130,  0,-30,8,  0,90,0, $fn=3);
            for(i=[-60:20:60]){
                yCyl(0.8,6,  i,-30,8);            
            }//for
        }//difference
        difference(){
            yCyl(4.5,60,  60,0,8,  0,90,90, $fn=3);
            for(i=[-30:20:30]){
                yCyl(0.8,6,  60,i,8);            
            }//for
        }//difference
        difference(){
            yCyl(4.5,60,  -60,0,8,  0,90,90, $fn=3);
            for(i=[-30:20:30]){
                yCyl(0.8,6,  -60,i,8);            
            }//for
        }//difference
        yCyl(4,30,  60,0,-5, $fn=4);
        yCyl(4,30,  -60,0,-5, $fn=4);
    }//transform    
}//module  

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

//move to lib?
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
                yCube(10,20,10, 0,0,-1);
            }//difference
    }//transform    
}//module  



        