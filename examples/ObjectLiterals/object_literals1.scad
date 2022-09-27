
extrusionInfo = [
   {position = [0,0,0]; rotation = [0,0,0]; extrusion = 1;},
   {position = [10,10,0]; rotation = [22.5,5,0]; extrusion = 2;},
   {position = [20,20,5]; rotation = [45,10,0]; extrusion = 3;},
   {position = [30,30,10]; rotation = [67.5,15,0]; extrusion =4;},
   {position = [40,40,15]; rotation = [90,20,0]; extrusion = 5;}
];
   
for(elem = extrusionInfo){
   translate(elem.position)
      rotate(elem.rotation){
         height = 40;
         echo(elem = elem.extrusion);
      }
} 
   
/*   
   
//function obj_by_index(ob, i) = [ for (k=ob) ob[k] ][i];
function obj_by_index(ob, i) = o[ [ for (k=ob) k ][i] ];

for(i = [0: len(extrusionInfo)-1]){
   elem = obj_by_index(extrusionInfo,i);
   translate(elem.position)
      rotate(elem.rotation){
         height = 40;
         echo(elem = elem.extrusion);
      }
}
*/
