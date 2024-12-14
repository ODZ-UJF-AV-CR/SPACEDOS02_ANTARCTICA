use <../src/plbase.scad>



include <../src/manufactury_conf.scad>
include <../configuration.scad>


 translate([0,0,tloustka_plbase/2])
rotate(a=[0,0,0])
    {
        
       plbase_vrchni_kryt_pro_odecet(pocet_der1-1,pocet_der2-1,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje1,vzdalenost_od_okraje2,prumer_sroubu,vyska_bocnice,prekryti_der,tloustka_bocnice,plbase_tolerance_horni,tloustka_plbase);
     }
translate([0,10,tloustka_plbase*2]) 
minkowski()
{
  cube([90,5,2], center=true);
  sphere(2);
}

translate([0,45,tloustka_plbase*2])
minkowski()
{
  cube([90,5,2], center=true);
  sphere(2);
}