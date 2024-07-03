include <openscad-bushing/bushing.scad>
include <sae-units/sae-units.scad>


stud_diameter = 1 * quarter_inch; //measured
length = 2.5 * one_inch;
nail_diameter = 3 * sixteenth_inch; //measured

nail_radius = nail_diameter / 2;
stud_radius = 1.22474 * stud_diameter / 2; // 2/3 of the length should be radiused at stud_radius for a 3 inch length
$fa = .01;
$fs = .01;


 difference() {
	cylinder(
		length - 1, 
		r1 = stud_radius, 
		r2 =  nail_radius);
	translate([0,0,-.5]) cylinder(
		length + 1,
		r1 = nail_radius, 
		r2 = nail_radius);
}
