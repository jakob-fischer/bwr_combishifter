handlebar_diameter=22.5;
base_diameter=55;
base_width=7;
slidebase_width=30;
slidebase_min_thickness=2;
flask_diameter=10;
wire_diameter=3;
wire_base_diameter=5;
$fn=50;

slidebase_diameter=handlebar_diameter+2*slidebase_min_thickness+flask_diameter;

difference() {
union() {
translate([0,0,-base_width])
cylinder(base_width, r=base_diameter/2, center = false);

difference() {  
    cylinder(slidebase_width, r=slidebase_diameter/2, center = false);

    translate([slidebase_diameter/2,0,-1])
    cylinder(slidebase_width+2, r=flask_diameter/2, center = false);
    
        translate([-slidebase_diameter/2,0,-1])
    cylinder(slidebase_width+2, r=flask_diameter/2, center = false);
}
}

translate([slidebase_diameter/2,0,0]) union() {
    cylinder(2*slidebase_width+1, r=wire_diameter/2, center = true);
    
    translate([0,0,-base_width-1])
    cylinder(base_width/2+1, r=wire_base_diameter/2, center=false);
}
    
translate([-slidebase_diameter/2,0,0]) union() {
    cylinder(2*slidebase_width+1, r=wire_diameter/2, center = true);    
  
    translate([0,0,-base_width-1])  
    cylinder(base_width/2+1, r=wire_base_diameter/2, center=false);  
}


cylinder(slidebase_width*2+1, r=handlebar_diameter/2, center = true);
}