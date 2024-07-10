include <openscad-bushing/bushing.scad>
include <sae-units/sae-units.scad>


stud_diameter = 1 * quarter_inch; //measured
length = 1.5 * one_inch;
nail_diameter = 3 * sixteenth_inch; //measured

nail_radius = nail_diameter / 2;
stud_radius = stud_diameter / 2; 
$fa = .01;
$fs = .01;


 difference() {
	union() {
		cylinder(
			(length / 3) - 1, 
			r1 = stud_radius, 
			r2 =  nail_radius);
		rotate([180, 0, 0]) 
			cylinder(
				2 * (length / 3), 
				r1 = stud_radius, 
				r2 = stud_radius);
	}
	translate([0,0,- length / 3]) cylinder(
		2 * (length / 3) + 1,
		r1 = nail_radius, 
		r2 = nail_radius);
}

