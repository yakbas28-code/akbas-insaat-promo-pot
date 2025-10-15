// AKBAŞ İNŞAAT Promosyon Mini Saksı
// Tasarım: Yusuf Akbaş
// Ölçüler: El boyutu (~8cm yükseklik)

// --- Ayarlar ---
$fn = 150;  // Yumuşak kenarlar
wall_thickness = 4;  // duvar kalınlığı
outer_radius = 35;   // dış yarıçap (mm)
height = 80;         // yükseklik (mm)

// --- Dış ve iç silindir farkı ---
difference() {
    // Dış form (altı hafif oval)
    hull() {
        cylinder(h = height - 10, r = outer_radius);
        translate([0, 0, height - 10]) cylinder(h = 10, r = outer_radius - 2);
    }

    // İç boşluk
    translate([0, 0, wall_thickness])
        cylinder(h = height - 5, r = outer_radius - wall_thickness);
}

// --- Logo Alanı (Kabartma Yazı) ---
translate([0, 0, 10])
rotate([90, 0, 0])
linear_extrude(height = 2)
text("AKBAŞ İNŞAAT", 
     size = 10, 
     font = "Poppins:style=Bold", 
     halign = "center", 
     valign = "center");

// --- Alt Yüzey Markası ---
translate([0, 0, -1])
linear_extrude(height = 1)
text("Resistant Construction", 
     size = 5, 
     font = "Poppins:style=Regular", 
     halign = "center", 
     valign = "center");

// --- Dekoratif Detaylar ---
translate([0,0,height-5])
difference() {
    cylinder(h=5, r=outer_radius+1);
    translate([0,0,0]) cylinder(h=6, r=outer_radius-5);
}

// --- Renk Önerisi ---
color([0.87, 0.66, 0.0])  // #DFA700 (Altın sarısı)
cylinder(h=2, r=outer_radius);  // alt kısımda marka rengi bandı
