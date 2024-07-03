include <openscad-bushing/bushing.scad>
include <sae-units/sae-units.scad>


stud_diameter = 1 * quarter_inch; //measured
length = 3 * one_inch;
nail_diameter = 1 * eighth_inch; //measured

nail_radius = nail_diameter / 2;
stud_radius = 1.22474 * stud_diameter / 2; // 2/3 of the length should be radiused at stuf_radius for a 3 inch length
$fa = .01;
$fs = .01;

//bushing(length,stud_diameter, nail_diameter);

//cylinder(length - 1, stud_diameter,  nail_diameter);


 difference() {
	cylinder(length - 1, stud_radius,  nail_radius);
	translate([0,0,-.5]) cylinder(
		length + 1,
		nail_radius, 
		nail_radius);
}
