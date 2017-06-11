$fn=300;
module base(h,r1,r2){
    rotate([0,0,180]) linear_extrude(height=h){
        offset(r=-r2){
            translate([-r1-r2,0,0]) square(size=[(r1+r2)*2,30+r2]);
            rotate([0,0,120]) translate([-r1-r2,0,0]) square(size=[(r1+r2)*2,30+r2]);
            rotate([0,0,240]) translate([-r1-r2,0,0]) square(size=[(r1+r2)*2,30+r2]);
        }
        translate([0,30]) circle(r=r1);
        rotate([0,0,120]) translate([0,30]) circle(r=r1);
        rotate([0,0,240]) translate([0,30]) circle(r=r1);
    }
}

difference(){
    translate([0,0,-(8.49/2)]) base(8.5,17,5);
    translate([0,0,-(.49/2)]) {
        translate([0,0,2]) base(2.6,15,7);
        translate([-19.5/2,-40,-3]) cube([19.5,25,5.5]);
        translate([-11.8/2,-15.5,-3]) cube([11.8,5,5.5]);
        translate([0,0,-4.5]){
            cylinder(h=10,r=9.45);
            rotate([0,0,120]) translate([0,-30,0]) cylinder(h=10,r=9.45);
            rotate([0,0,240]) translate([0,-30,0]) cylinder(h=10,r=9.45);
        }
        rotate([0,0,120]) translate([0,-30,0]) intersection(){
            cylinder(h=2.5,r=12);
            translate([-(9.5/2),0,0]) cube([9.5,12,2.5]);
        }
        rotate([0,0,240]) translate([0,-30,0]) intersection(){
            cylinder(h=2.5,r=12);
            translate([-(9.5/2),0,0]) cube([9.5,12,2.5]);
        }
    }
}


/*
//minkowski(){
    base(0.1,17-(8.49/2),5);
    sphere(r=8.49/2);
//}
*/