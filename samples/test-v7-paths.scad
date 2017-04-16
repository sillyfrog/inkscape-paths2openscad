
// Module names are of the form poly_<inkscape-path-id>().  As a result,
// you can associate a polygon in this OpenSCAD program with the corresponding
// SVG element in the Inkscape document by looking for the XML element with
// the attribute id="inkscape-path-id".

// fudge value is used to ensure that subtracted solids are a tad taller
// in the z dimension than the polygon being subtracted from.  This helps
// keep the resulting .stl file manifold.
fudge = 0.1;
height = 5;
min_line_width = 1.0;
line_fn = 4;


pathelli_0_points = [[-28.346635,-85.039784],[-35.754708,-84.490006],[-42.810523,-82.881847],[-49.315803,-80.276904],[-55.072270,-76.736778],[-59.792139,-72.419244],[-63.265059,-67.540149],[-65.408906,-62.248205],[-66.141558,-56.692121],[-65.373526,-50.979474],[-63.171163,-45.658707],[-59.686445,-40.843800],[-55.071346,-36.648731],[-49.477841,-33.187479],[-43.057904,-30.574024],[-35.963510,-28.922344],[-28.346635,-28.346418],[-20.729757,-28.922342],[-13.635362,-30.574021],[-7.215423,-33.187476],[-1.621916,-36.648728],[2.993184,-40.843798],[6.477903,-45.658706],[8.680267,-50.979473],[9.448299,-56.692121],[8.715647,-62.248206],[6.571799,-67.540151],[3.098878,-72.419246],[-1.620992,-76.736781],[-7.377462,-80.276907],[-13.882743,-82.881849],[-20.938559,-84.490008],[-28.346635,-85.039784],[-28.467725,-74.705793],[-22.754942,-74.349774],[-17.434067,-73.328876],[-12.619084,-71.713551],[-8.423978,-69.574248],[-4.962735,-66.981417],[-2.349337,-64.005509],[-0.697771,-60.716974],[-0.122022,-57.186261],[-0.698322,-53.655851],[-2.350246,-50.367639],[-4.963825,-47.392057],[-8.425094,-44.799535],[-12.620085,-42.660505],[-17.434832,-41.045398],[-22.755367,-40.024646],[-28.467725,-39.668679],[-34.180386,-40.024435],[-39.501247,-41.045050],[-44.316321,-42.660086],[-48.511622,-44.799107],[-51.973166,-47.391673],[-54.586965,-50.367346],[-56.239034,-53.655688],[-56.815387,-57.186261],[-56.265782,-60.620181],[-54.657739,-63.890833],[-52.052857,-66.906302],[-48.512738,-69.574676],[-44.195160,-71.762547],[-39.315985,-73.372402],[-34.023933,-74.366174],[-28.467725,-74.705793],[-28.467725,-74.705793],[-18.897414,-66.141342],[-22.513536,-65.422170],[-25.579139,-63.373847],[-27.627463,-60.308244],[-28.346635,-56.692121],[-27.627463,-53.075998],[-25.579139,-50.010395],[-22.513536,-47.962072],[-18.897414,-47.242900],[-15.281291,-47.962072],[-12.215688,-50.010395],[-10.167364,-53.075998],[-9.448193,-56.692121],[-10.167364,-60.308244],[-12.215688,-63.373847],[-15.281291,-65.422170],[-18.897414,-66.141342],[-18.897414,-66.141342]];
pathelli_0_paths = [[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32],
				[33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66],
				[67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84]];
module poly_pathelli(h, w, res=line_fn)
{
  scale([25.4/96, -25.4/96, 1]) union()
  {
    linear_extrude(height=h)
      polygon(pathelli_0_points, pathelli_0_paths);
  }
}


pathopen_0_points = [[-103.937022,28.346864],[-28.346466,47.244504],[-66.141738,-9.448416],[-103.937022,9.449224]];
module poly_pathopen(h, w, res=line_fn)
{
  scale([25.4/96, -25.4/96, 1]) union()
  {
    linear_extrude(height=h)
      polygon(pathopen_0_points);
  }
}

path4500_0_points = [[-28.346462,47.244504],[-28.346462,85.039784],[9.448822,85.039784]];
module poly_path4500(h, w, res=line_fn)
{
  scale([25.4/96, -25.4/96, 1]) union()
  {
    linear_extrude(height=h)
      polygon(path4500_0_points);
  }
}

pathcombi_0_points = [[47.244102,9.449224],[66.141742,9.449224],[66.141742,-28.346056],[47.244102,-28.346056],[9.448822,-9.448416]];
pathcombi_1_points = [[28.346462,9.449224],[28.563305,16.313806],[29.195379,22.732013],[30.215003,28.700387],[31.594494,34.215467],[33.306170,39.273792],[35.322349,43.871903],[37.615348,48.006338],[40.157487,51.673638],[42.921082,54.870343],[45.878452,57.592992],[49.001915,59.838125],[52.263788,61.602281],[55.636389,62.882001],[59.092036,63.673824],[62.603048,63.974290],[66.141742,63.779939],[69.680436,63.087310],[73.191447,61.892943],[76.647095,60.193378],[80.019696,57.985155],[83.281569,55.264813],[86.405032,52.028892],[89.362402,48.273932],[92.125997,43.996472],[94.668135,39.193053],[96.961135,33.860214],[98.977314,27.994494],[100.688990,21.592434],[102.068481,14.650573],[103.088104,7.165452],[103.720179,-0.866391],[103.937022,-9.448416],[103.720179,-18.030441],[103.088104,-26.062284],[102.068481,-33.547405],[100.688990,-40.489266],[98.977314,-46.891326],[96.961135,-52.757046],[94.668135,-58.089885],[92.125997,-62.893304],[89.362402,-67.170764],[86.405032,-70.925724],[83.281569,-74.161645],[80.019696,-76.881987],[76.647095,-79.090210],[73.191447,-80.789775],[69.680436,-81.984142],[66.141742,-82.676771],[62.603048,-82.871122],[59.092036,-82.570656],[55.636389,-81.778833],[52.263788,-80.499113],[49.001915,-78.734957],[45.878452,-76.489824],[42.921082,-73.767175],[40.157487,-70.570470],[37.615348,-66.903170],[35.322349,-62.768735],[33.306170,-58.170624],[31.594494,-53.112299],[30.215003,-47.597219],[29.195379,-41.628845],[28.563305,-35.210638],[28.346462,-28.346056]];
module poly_pathcombi(h, w, res=line_fn)
{
  scale([25.4/96, -25.4/96, 1]) union()
  {
    linear_extrude(height=h)
      polygon(pathcombi_0_points);
    linear_extrude(height=h)
      polygon(pathcombi_1_points);
  }
}

module inkscape(h)
{
  difference()
  {
    union()
    {
      translate ([0,0,0]) poly_pathelli(h, min(min_line_width, 0.75590551));
      translate ([0,0,0]) poly_pathopen(h, min(min_line_width, 0.365));
      translate ([0,0,0]) poly_path4500(h, min(min_line_width, 0.26499999));
      translate ([0,0,0]) poly_pathcombi(h, min(min_line_width, 0.265));
    }
    union()
    {
    }
  }
}

inkscape(height);