// Jun Mitani 2018.12.22

#include "metals.inc"

camera {
    location <0, -20, 24>
    right <-1.33, 0, 0>
    sky <0, 0, 1>
    look_at <0, 0, 0>
    angle 45
    }

light_source {
    <15,0,0>
    color rgb <1,1,1>
}

light_source {
    <0,15,0>
    color rgb <0.8,0.8,0.8>
}

light_source { 
    <-15,0,15> 
    color 1.5 parallel 
}

plane { <0,0,1>, -3
    pigment { color rgb<1,1,1> }
}

#declare a = 2*pi;
#declare b = pow(pi,-6);
#declare c = cos(pi/4);
#declare d = ln(pi);

isosurface {
    function { 
        exp(-c*(pow(x-a,2)+pow(y,2)+pow(z,2)))+
        exp(-c*(pow(x-a*cos((2*pi)/8), 2) + pow(y-a*sin((2*pi)/8),2) + pow(z*d,2))) + 
        exp(-c*(pow(x-a*cos((4*pi)/8), 2) + pow(y-a*sin((4*pi)/8),2) + pow(z*d,2))) + 
        exp(-c*(pow(x-a*cos((6*pi)/8), 2) + pow(y-a*sin((6*pi)/8),2) + pow(z*d,2))) + 
        exp(-c*(pow(x-a*cos((8*pi)/8), 2) + pow(y-a*sin((8*pi)/8),2) + pow(z*d,2))) + 
        exp(-c*(pow(x-a*cos((10*pi)/8), 2) + pow(y-a*sin((10*pi)/8),2) + pow(z*d,2))) + 
        exp(-c*(pow(x-a*cos((12*pi)/8), 2) + pow(y-a*sin((12*pi)/8),2) + pow(z*d,2))) + 
        exp(-c*(pow(x-a*cos((14*pi)/8), 2) + pow(y-a*sin((14*pi)/8),2) + pow(z*d,2))) -b 
    }
    
       contained_by { 
        sphere { <0,0,0>, 10}
    }
    
    threshold 0
    accuracy 0.01
    max_gradient 0.26    
    open
    pigment {color rgb<0.8,0.5,0.25> }
}
