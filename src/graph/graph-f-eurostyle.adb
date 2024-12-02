package body Graph.F.EuroStyle is

the_EuroStyleFont: aliased Vector_Font:=(
 first_char => character'val(32), 
 last_char  => character'val(254),
 n_vertices => 3590,
 name => "EuroStyle   ",
 height   => 45,
 downline => -10,
 width=> (29,8,15,27,35,54,40,10,15,15,25,32,32,32,9,19,32,32,32,32,32,32,32,32,32,32,8,12,28,28,28,30,31,37,32,34,35,30,29,35,33,6,27,32,27,42,34,36,32,
39,31,32,31,33,35,53,35,35,33,14,19,14,24,32,22,26,27,26,27,27,21,27,26,6,11,24,6,40,26,27,27,27,23,26,26,26,28,37,27,26,25,14,7,14,31,26,34,26,27,26,26,26,26,26,27,27,27,12,19,16,37,37,30,48,49,27,27,27,26,26,26,36,33,27,37,36,37,43,26,
12,27,26,31,34,26,27,30,26,26,37,37,8,29,29,25,24,36,21,21,20,36,36,20,36,36,36,36,36,20,21,15,30,30,15,31,30,15,31,31,31,46,46,31,31,46,31,31,30,31,31,15,15,31,46,31,20,15,31,31,15,30,31,33,28,25,30,29,36,28,36,26,35,36,26,47,25,30,33,26,
26,26,26,25,25,29,31,27,9,9,35,25,21,15),
 index=> (1,2,10,25,34,55,77,100,108,117,126,139,144,151,154,160
,163,181,185,200,216,221,234,251,255,278,295,306,319,323,328,332,351,378,384,401,418,430,437,443,461,468,471,481,489,493,499,504,522,532,552,566,585,590,601,605,611,616,622,627,632,635,640
,644,647,650,670,685,698,713,727,735,754,764,769,776,784,787,804,814,828,843,858,867,886,897,907,911,917,922,930,935,943,946,954,959,966,993,1013,1034,1056,1085,1111,1142,1162,1179,1203,1224,1237,1243
,1253,1269,1287,1301,1333,1346,1363,1387,1408,1421,1440,1458,1486,1507,1523,1538,1560,1580,1597,1623,1633,1654,1671,1685,1694,1715,1730,1749,1753,1757,1775,1787,1795,1804,1811,1956,2245,2657,2660,2665,2672,2679,2687,2696,2705,2710,2717
,2724,2730,2739,2743,2747,2752,2757,2764,2767,2772,2779,2786,2793,2800,2809,2818,2829,2834,2847,2854,2862,2869,2877,2883,2890,2897,2903,2910,2917,2921,2925,2993,3059,3093,3127,3193,3206,3219,3224,3231,3239,3254,3269,3279,3300,3316,3337
,3354,3378,3394,3409,3420,3427,3434,3440,3446,3456,3466,3479,3488,3501,3515,3529,3535,3545,3557),
 vertex_x=> (62,34,-34,35,-35,-33,-33,-35,41,35,-33,-33,-35,-35,34,-34,41,-42,-42,-40,-40,-41,-41,48,43,-36,44,-52,53,-33,34,-54,60,61,-60,-57,-37,-34,-33,-33,-34,-36,-58,-61,-62,-62,-61,-58,-37,-34,-33,47,-47,68,50,-47,-35,-33,-33,-35
,-47,-50,-50,60,-54,79,-81,-81,-79,-67,-64,-64,-64,-67,-79,87,62,-62,-60,-57,-39,-36,-33,-33,-36,-39,59,-59,-58,-57,-54,-41,-38,-36,-36,-36,-39,-67,73,35,-33,-33,-35,35,-35,-33,43,42,-36,-34,-33,-33,-34,-36,-42,48,33,-39,-41,-42
,-42,-41,-39,-33,48,33,-40,45,-52,39,-41,43,-46,46,-43,41,-39,58,33,-53,43,-43,65,35,-33,-33,-35,-35,-33,65,33,-54,65,35,-33,-33,-35,-35,42,46,-33,52,42,-36,-34,-33,-33,-34,-36,-42,-51,-56,-58,-59,-59,-58,-56,-51,-41,65
,39,-51,-51,65,34,-35,-38,-53,-57,-58,-58,-57,-53,-38,-35,-34,-33,-58,65,33,-34,-37,-54,-58,-58,-54,-42,54,-58,-58,-54,-37,-34,-33,65,59,-33,-56,-56,65,33,-34,-37,-54,-58,-58,-54,-38,-35,-33,-33,-58,65,58,-58,-54,-37,-34,-33,-33
,-34,-37,-54,-58,-58,-54,-38,-35,-33,65,33,-59,-40,65,53,-58,-58,-54,-37,-34,-33,-33,-34,-38,-53,-57,-58,-58,-57,-53,-38,-35,-34,-34,-35,-38,65,33,-34,-37,-54,-58,-58,-54,-37,-34,-33,-33,-34,-37,-53,-57,-58,65,33,-33,-35,-35,-33,33
,-35,-35,-33,-33,41,33,-33,-35,-35,-33,35,-33,-33,-35,35,-35,-33,45,55,-33,-55,61,33,-54,33,-54,61,33,-55,-33,61,33,-33,-34,-38,-53,-56,-57,-57,-56,-53,-46,-44,-44,45,-45,-44,-44,-45,63,48,-45,-41,-40,-41,-44,-47,48,-47,-48
,-51,-53,-56,-56,-52,-48,-46,-40,-35,-33,-33,-35,-40,-44,-50,-58,64,33,-48,-64,59,-37,70,33,-33,-54,-58,-58,-58,-58,-54,-33,54,-58,-59,-59,-58,-54,-33,65,61,-60,-58,-53,-41,-36,-34,-33,-33,-34,-36,-41,-53,-58,-60,-61,67,33,-33,-53
,-58,-61,-62,-62,-61,-59,-53,-33,68,57,-33,-33,-57,56,-33,63,33,-33,-56,55,-33,62,61,-59,-53,-41,-36,-34,-33,-33,-34,-36,-41,-53,-59,-61,-62,-62,-47,68,33,-33,33,-60,60,-60,66,33,-33,39,33,-34,-36,-41,-47,-51,-53,-54,-54,60
,33,-33,58,-40,-33,40,-59,65,33,-33,-54,60,33,-33,-51,-69,-69,75,33,-33,-61,-61,67,42,-36,-34,-33,-33,-34,-36,-42,-53,-59,-62,-63,-63,-62,-59,-53,-42,69,33,-33,-54,-58,-59,-59,-58,-54,-33,65,42,-36,-34,-33,-33,-34,-36,-42,-53
,-59,-62,-63,-63,-62,-59,-53,-42,51,-66,72,33,-33,-54,-58,-58,-58,-58,-54,-33,54,-58,-58,-58,64,33,-34,-37,-54,-58,-58,-58,-58,-54,-36,-34,-33,-33,-34,-37,-53,-57,-58,65,33,-58,46,-46,64,33,-33,-34,-36,-41,-52,-57,-59,-60,-60,66
,33,-47,-62,68,33,-45,-57,-69,-81,86,33,-61,34,-62,68,33,-47,-62,47,-47,68,34,-59,-33,-60,66,41,-33,-33,-41,47,33,-46,52,33,-41,-41,-33,47,37,-44,-51,57,33,-59,65,33,-45,55,33,-35,-38,-47,-51,-53,-53,53,-51,-48,-37
,-35,-33,-33,-35,-37,-48,-51,-53,59,33,-33,33,-35,-38,-49,-53,-54,-54,-53,-49,-38,-35,-33,60,53,-52,-48,-38,-35,-33,-33,-35,-38,-48,-52,-53,59,54,-53,-49,-38,-35,-33,-33,-35,-38,-49,-53,-54,54,-54,60,33,-54,-54,-53,-49,-38,-35,-33
,-33,-35,-38,-50,-53,60,38,-38,-40,-44,-47,33,-48,54,34,-38,-49,-52,-54,-54,54,-52,-49,-38,-35,-33,-33,-35,-38,-49,-53,-54,60,33,-33,33,-35,-38,-47,-51,-53,-53,59,33,-33,33,-33,39,33,-36,-38,-38,38,-38,44,33,-33,33,-37,-50
,37,-51,57,33,-33,39,33,-33,33,-35,-38,-45,-48,-50,-50,50,-52,-55,-62,-65,-67,-67,73,33,-33,33,-35,-38,-48,-52,-53,-53,59,38,-35,-33,-33,-35,-38,-49,-53,-54,-54,-53,-49,-38,60,33,-33,33,-35,-38,-49,-52,-54,-54,-53,-49,-38,-35
,-33,60,54,-53,-49,-38,-35,-33,-33,-35,-38,-49,-53,-54,54,-54,60,33,-33,33,-36,-39,-45,-48,-50,56,33,-35,-38,-48,-52,-53,-53,-52,-48,-38,-35,-33,-33,-35,-38,-48,-52,-53,59,33,-52,38,-38,-40,-44,-47,-51,-53,-53,59,33,-33,-35,-38
,-47,-51,-53,53,-53,59,33,-44,-55,61,33,-41,-48,-56,-64,70,33,-53,34,-54,60,33,-43,-53,43,-41,-38,-36,59,34,-52,-33,-52,58,41,-36,-36,-33,-35,-35,-41,47,33,-33,40,33,-38,-38,-41,-38,-38,-33,47,34,-40,-49,-57,64,54,-54
,-43,-33,-33,-54,59,61,-60,-58,-53,-41,-36,-34,-33,-33,-34,-36,-41,-53,-58,-60,-61,43,-43,-45,-49,-51,-51,-49,-36,-34,-34,67,33,-33,-35,-38,-47,-51,-53,53,-53,39,-41,-41,-39,-39,47,-49,-49,-47,-47,59,33,-54,-54,-53,-49,-38,-35,-33
,-33,-35,-38,-50,-53,48,-46,-46,-48,-48,-45,-40,60,33,-35,-38,-47,-51,-53,-53,53,-51,-48,-37,-33,-33,-35,-37,-48,-51,-53,36,-43,-50,59,33,-35,-38,-47,-51,-53,-53,53,-51,-48,-37,-33,-33,-35,-37,-48,-51,-53,40,-38,-38,-40,-40,48,-46
,-46,-48,-48,59,33,-35,-38,-47,-51,-53,-53,53,-51,-48,-37,-33,-33,-35,-37,-48,-51,-53,36,-38,-38,-36,-36,-39,-44,59,33,-35,-38,-47,-51,-53,-53,53,-51,-48,-37,-33,-33,-35,-37,-48,-51,-53,40,-45,-48,-45,-40,-37,-40,42,-41,-42,-43,-42
,59,53,-49,-38,-35,-33,-35,-38,-49,-53,43,-43,-45,-49,-51,-51,-49,-36,-34,-34,59,33,-54,-54,-53,-49,-38,-35,-33,-33,-35,-38,-50,-53,37,-44,-51,60,33,-54,-54,-53,-49,-38,-35,-33,-33,-35,-38,-50,-53,41,-39,-39,-41,-41,49,-47,-47,-49
,-49,60,33,-54,-54,-53,-49,-38,-35,-33,-33,-35,-38,-50,-53,36,-38,-38,-36,-36,-39,-44,60,38,-38,35,-33,-33,-35,-35,43,-41,-41,-43,-43,45,41,-41,34,-41,-48,52,41,-41,33,-35,-35,-33,-33,-36,-41,49,33,-48,-64,59,-37,45,-43,-43
,-45,-45,53,-51,-51,-53,-53,70,33,-48,-64,59,-37,49,-48,-47,-48,-49,47,-45,-47,-49,-51,-49,-47,70,57,-33,-33,-57,33,-57,49,-47,-47,-49,-49,-46,-41,63,33,-35,-38,-47,-51,-53,-53,53,-51,-48,-37,-33,-33,-35,-37,-48,-51,-53,53,-55
,-58,-69,-73,-74,-74,-53,53,-55,-58,-70,-73,81,33,-48,-60,59,-75,51,-51,-75,51,-74,37,-51,82,38,-35,-33,-33,-35,-38,-49,-53,-54,-54,-53,-49,-38,37,-44,-51,60,38,-35,-33,-33,-35,-38,-49,-53,-54,-54,-53,-49,-38,41,-39,-39,-41,-41
,49,-47,-47,-49,-49,60,38,-35,-33,-33,-35,-38,-49,-53,-54,-54,-53,-49,-38,38,-40,-40,-38,-38,-41,-46,60,33,-33,-35,-38,-47,-51,-53,53,-53,36,-43,-50,59,33,-33,-35,-38,-47,-51,-53,53,-53,35,-37,-37,-35,-35,-38,-43,60,-60,59,33
,-43,-53,43,-41,-38,-36,40,-38,-38,-40,-40,48,-46,-46,-48,-48,59,42,-36,-34,-33,-33,-34,-36,-42,-53,-59,-62,-63,-63,-62,-59,-53,-42,45,-43,-43,-45,-45,53,-51,-51,-53,-53,69,33,-33,-34,-36,-41,-52,-57,-59,-60,-60,43,-45,-45,-43,-43
,51,-53,-53,-51,-51,66,38,-35,-33,-33,-35,-38,-49,-53,-54,-54,-53,-49,-38,50,-37,60,57,-55,-51,-48,-44,-41,-39,-37,-37,-54,-58,-59,33,-45,70,42,-36,-34,-33,-33,-34,-36,-42,-53,-59,-62,-63,-63,-62,-59,-53,-42,-40,56,-55,-42,69,33
,-54,-58,-59,-59,-58,-54,-33,-33,58,-58,-59,-60,-64,-65,-66,-66,54,-66,70,74,-72,-68,-65,-58,-56,-54,-54,-52,-50,-43,-40,-36,-34,50,-62,76,33,-35,-38,-47,-51,-53,-53,53,-51,-48,-37,-33,-33,-35,-37,-48,-51,-53,47,-45,-45,-47,-47,-44
,-39,59,33,-33,41,-39,-39,-41,-41,-38,-33,45,38,-35,-33,-33,-35,-38,-49,-53,-54,-54,-53,-49,-38,50,-48,-48,-50,-50,-47,-42,60,33,-33,-35,-38,-47,-51,-53,53,-53,48,-46,-46,-48,-48,-45,-40,59,33,-33,33,-35,-38,-48,-52,-53,-53,33
,-39,-48,-56,64,33,-33,-61,-61,35,-41,-50,-58,67,33,-35,-38,-47,-51,-53,-53,53,-51,-48,-37,-33,-33,-35,-37,-48,-51,-53,33,-54,59,38,-35,-33,-33,-35,-38,-49,-53,-54,-53,-49,-38,33,-54,60,57,-57,-56,-52,-37,-34,-33,-33,-34,-37,-44
,-46,-46,45,-45,-46,-46,-45,63,33,-33,-53,59,53,-53,-33,59,53,-53,-55,-61,-64,-64,-62,-57,-55,-53,-51,-64,64,-33,34,-40,-40,70,64,-64,-33,34,-40,-40,64,-47,-49,-61,-61,70,34,-34,35,-35,-33,-33,-35,41,45,-33,-45,58,-46,-58
,65,-65,62,46,-58,-46,33,-45,-33,62,33,-33,-36,-36,-33,35,-35,34,-34,33,-33,-36,-36,-33,34,-34,35,-35,33,-36,-36,-33,-33,35,-35,34,-34,33,-36,-36,-33,-33,34,-34,35,-35,40,-40,-43,-43,-40,42,-42,41,-41,40,-40,-43,-43,-40
,41,-41,42,-42,40,-43,-43,-40,-40,42,-42,41,-41,40,-43,-43,-40,-40,41,-41,42,-42,48,-48,-51,-51,-48,50,-50,49,-49,48,-48,-51,-51,-48,49,-49,50,-50,48,-51,-51,-48,-48,50,-50,49,-49,48,-51,-51,-48,-48,49,-49,50,-50,55,-55
,-58,-58,-55,57,-57,56,-56,55,-55,-58,-58,-55,56,-56,57,-57,55,-58,-58,-55,-55,57,-57,56,-56,55,-58,-58,-55,-55,56,-56,57,-57,58,33,-33,-36,-36,-33,35,-35,34,-34,33,-33,-36,-36,-33,34,-34,35,-35,33,-36,-36,-33,-33,35,-35
,34,-34,33,-36,-36,-33,-33,34,-34,35,-35,36,-36,-39,-39,-36,38,-38,37,-37,36,-36,-39,-39,-36,37,-37,38,-38,36,-39,-39,-36,-36,38,-38,37,-37,36,-39,-39,-36,-36,37,-37,38,-38,39,-39,-42,-42,-39,41,-41,40,-40,39,-39,-42,-42
,-39,40,-40,41,-41,39,-42,-42,-39,-39,41,-41,40,-40,39,-42,-42,-39,-39,40,-40,41,-41,42,-42,-45,-45,-42,44,-44,43,-43,42,-42,-45,-45,-42,43,-43,44,-44,42,-45,-45,-42,-42,44,-44,43,-43,42,-45,-45,-42,-42,43,-43,44,-44,45
,-45,-48,-48,-45,47,-47,46,-46,45,-45,-48,-48,-45,46,-46,47,-47,45,-48,-48,-45,-45,47,-47,46,-46,45,-48,-48,-45,-45,46,-46,47,-47,48,-48,-51,-51,-48,50,-50,49,-49,48,-48,-51,-51,-48,49,-49,50,-50,48,-51,-51,-48,-48,50,-50
,49,-49,48,-51,-51,-48,-48,49,-49,50,-50,51,-51,-54,-54,-51,53,-53,52,-52,51,-51,-54,-54,-51,52,-52,53,-53,51,-54,-54,-51,-51,53,-53,52,-52,51,-54,-54,-51,-51,52,-52,53,-53,54,-54,-57,-57,-54,56,-56,55,-55,54,-54,-57,-57
,-54,55,-55,56,-56,54,-57,-57,-54,-54,56,-56,55,-55,54,-57,-57,-54,-54,55,-55,56,-56,57,33,-33,-36,-36,-33,35,-35,34,-34,36,-36,-39,-39,-36,38,-38,37,-37,39,-42,-42,-39,-39,41,-41,40,-40,39,-39,-33,-33,-39,35,-35,34,-34
,38,-38,37,-37,36,-36,33,-33,-36,-36,-33,35,-35,34,-34,42,-42,-45,-45,-42,44,-44,43,-43,48,-48,-51,-51,-48,50,-50,49,-49,51,-51,-54,-54,-51,53,-53,52,-52,45,-45,-48,-48,-45,47,-47,46,-46,33,-36,-36,-33,-33,35,-35,34,-34
,36,-36,-39,-39,-36,38,-38,37,-37,39,-39,-42,-42,-39,41,-41,40,-40,33,-33,-36,-36,-33,35,-35,34,-34,39,-42,-42,-39,-39,41,-41,40,-40,42,-42,-45,-45,-42,44,-44,43,-43,45,-45,-48,-48,-45,47,-47,46,-46,33,-36,-36,-33,-33,35
,-35,34,-34,36,-36,-39,-39,-36,38,-38,37,-37,39,-39,-42,-42,-39,41,-41,40,-40,36,-36,-39,-39,-36,38,-38,37,-37,36,-36,-39,-39,-36,38,-38,37,-37,54,-54,-48,-48,-54,50,-50,49,-49,53,-53,52,-52,51,-51,54,-54,-48,-48,-54,50
,-50,49,-49,53,-53,52,-52,51,-51,54,-54,-48,-48,-54,50,-50,49,-49,53,-53,52,-52,51,-51,63,-63,69,-69,-63,-63,-69,65,-65,64,-64,68,-68,67,-67,66,-66,60,-63,-63,-60,-60,62,-62,61,-61,63,-63,-66,-66,-63,65,-65,64,-64,66
,-66,-69,-69,-66,68,-68,67,-67,69,-69,-63,-63,-69,65,-65,64,-64,68,-68,67,-67,66,-66,69,-69,-63,-63,-69,65,-65,64,-64,68,-68,67,-67,66,-66,60,-63,-63,-60,-60,62,-62,61,-61,63,-63,-66,-66,-63,65,-65,64,-64,66,-66,-69,-69
,-66,68,-68,67,-67,69,-69,-63,-63,-69,65,-65,64,-64,68,-68,67,-67,66,-66,54,-57,-57,-54,-54,56,-56,55,-55,57,-57,-60,-60,-57,59,-59,58,-58,60,-60,-63,-63,-60,62,-62,61,-61,54,-57,-57,-54,-54,56,-56,55,-55,57,-57,-60,-60
,-57,59,-59,58,-58,60,-60,-63,-63,-60,62,-62,61,-61,69,69,48,-48,54,33,-48,48,-48,54,33,-48,48,-48,33,-48,53,33,-48,48,-48,64,-64,69,33,-64,-64,48,-48,33,-32,69,33,-48,-48,33,-48,-48,33,-33,53,48,-48,-33,33,-48
,-48,64,-64,69,48,-48,64,-64,69,33,-48,-48,33,-64,-64,69,48,-48,-33,64,-64,-33,69,33,-64,-64,48,-48,69,33,-48,-48,33,-48,-48,32,-32,53,33,-48,-48,54,48,-33,-33,48,33,-63,48,-48,63,33,-63,48,-48,63,48,-33,33,-33
,33,-32,48,33,-64,64,33,-63,48,-48,63,48,-33,33,-33,48,-33,48,64,-49,49,-49,33,-33,64,64,-49,-49,64,-33,-33,64,64,-49,-49,64,-33,-33,64,33,-48,-48,33,-79,79,-64,-64,79,33,-48,-48,33,-79,79,-64,-64,79,49,-49,-64
,64,-49,-49,33,-33,33,-34,64,33,-64,33,-64,64,48,-48,-33,33,-48,-48,64,-64,-79,79,-64,-64,79,33,-63,48,-48,33,-64,64,64,-58,-58,42,-42,58,-33,64,33,-63,48,-48,33,-64,63,64,-58,-58,42,-42,58,-33,64,64,-33,-33,49
,-49,64,48,-33,-33,48,-33,-33,48,48,-33,-33,48,-33,-33,48,64,-33,-33,49,-49,64,33,-79,48,-48,64,-64,79,48,-48,33,-64,33,-64,64,48,-48,-33,53,33,-33,-48,48,33,-64,-64,-33,-33,35,-35,37,-37,39,-39,41,-41,43,-43,45
,-45,34,-34,36,-36,38,-38,40,-40,42,-42,44,-44,46,-46,51,-51,53,-53,55,-55,57,-57,59,-59,61,-61,63,-63,50,-50,52,-52,54,-54,56,-56,58,-58,60,-60,62,-62,47,-47,48,-48,49,-49,64,-33,64,64,-33,-33,-64,-64,34,-34,35
,-35,36,-36,37,-37,38,-38,39,-39,40,-40,41,-41,42,-42,43,-43,44,-44,45,-45,46,-46,47,-47,48,-48,49,-49,50,-50,51,-51,52,-52,53,-53,54,-54,55,-55,56,-56,57,-57,58,-58,59,-59,60,-60,61,-61,62,-62,63,-63,64,33,-33
,-48,-48,-33,35,-35,37,-37,39,-39,41,-41,43,-43,45,-45,34,-34,36,-36,38,-38,40,-40,42,-42,44,-44,46,-46,47,-47,48,48,-48,-63,-63,-48,50,-50,52,-52,54,-54,56,-56,58,-58,60,-60,49,-49,51,-51,53,-53,55,-55,57,-57,59
,-59,61,-61,62,-62,63,64,-33,-33,-64,-64,34,-34,35,-35,36,-36,37,-37,38,-38,39,-39,40,-40,41,-41,42,-42,43,-43,44,-44,45,-45,46,-46,47,-47,48,-48,49,-49,50,-50,51,-51,52,-52,53,-53,54,-54,55,-55,56,-56,57,-57,58
,-58,59,-59,60,-60,61,-61,62,-62,63,-63,64,61,-52,-48,-38,-35,-33,-33,-35,-38,-48,-52,-61,66,33,-53,-56,-56,-53,-33,-33,53,-56,-56,-53,-33,61,33,-33,-53,-53,58,53,-53,38,-38,33,-58,63,57,-57,-33,-50,-33,-57,-57,62,38,-49
,-52,-54,-54,-52,-49,-38,-35,-33,-33,-35,-47,-64,69,36,-36,-38,-41,-50,-54,-56,56,-56,41,-41,-37,40,-40,61,33,-36,-45,-47,-47,47,-56,-62,-64,69,33,-54,44,-44,54,-53,-49,-38,-35,-33,-35,-38,-49,-53,-54,-54,33,-54,44,-44,59,43
,-54,-63,-64,-64,-63,-54,-43,-34,-33,-33,-34,-43,33,-64,68,33,-43,-43,-41,-36,-33,-33,-34,-36,-42,-53,-59,-62,-63,-63,-60,-55,-53,-53,-63,69,38,-49,-52,-54,-54,-52,-49,-38,-35,-33,-33,-35,-38,49,-33,-54,59,54,-53,-49,-38,-35,-33,-35
,-38,-49,-53,-54,-54,-56,-59,-70,-74,-75,-75,-74,-70,-59,-56,-54,80,38,-35,-33,-33,-35,-38,-49,-53,-54,-54,-53,-49,-38,50,-37,58,57,-48,-41,-35,-33,-33,57,-48,-41,-35,-33,-33,33,-56,63,33,-33,-34,-36,-41,-52,-57,-59,-60,-60,66,33
,-53,33,-54,33,-54,59,33,-54,33,-53,43,-43,59,54,-33,33,-53,-33,59,33,-54,54,-34,-54,59,53,-51,-47,-44,-40,-37,-35,-33,-33,58,33,-35,-39,-42,-46,-49,-51,-53,-53,58,44,-42,-42,-44,-44,44,-42,-42,-44,-44,33,-54,62,34,-40
,-49,-57,33,-39,-48,-56,64,54,-53,-49,-38,-35,-33,-35,-38,-49,-53,-54,-54,60,35,-37,-37,-35,-35,-33,-33,-35,-35,36,-36,34,-34,42,35,-33,-33,-37,-37,-35,-35,34,-34,36,-36,33,-33,42,63,-63,-48,-48,-33,68,33,-33,33,-35,-38,-48
,-52,-53,-53,58,34,-37,-39,-46,-49,-49,-48,-43,-40,-33,-48,54,33,-33,-48,-48,-33,34,-34,35,-35,36,-36,37,-37,38,-38,39,-39,40,-40,41,-41,42,-42,43,-43,44,-44,45,-45,46,-46,47,-47,48),
 vertex_y=> (0,42,14,0,4,4,0,0,0,42,42,38,38,42,38,30,38,38,42,42,38,38,30,0,42,0,0,42,28,28,16,16,0,35,40,42,42,40,35,30,25,23,21,18,14,7,3,0,0,3,7,48,-3,0,38,42,42,38,20,16,16,20,38,42,0,0,4,23,27,27,23,4,4,0,0,0,18,9,3,0
,0,3,9,18,24,25,31,37,40,41,42,42,41,40,37,30,25,0,0,42,42,38,38,42,32,30,0,42,41,37,28,14,6,1,0,0,42,41,37,28,14,6,1,0,0,31,31,31,31,42,34,28,20,42,34,28,20,0,18,18,34,3,0,0,0,4,4,-5,-8,0,18,18,0,0,0,4,4,0,0,42
,-3,0,0,1,6,14,28,37,41,42,42,41,37,28,14,6,1,0,0,0,27,42,0,0,34,39,42,42,39,34,28,23,20,17,14,9,0,0,0,35,39,42,42,39,25,23,23,23,20,3,0,0,3,8,0,11,11,42,0,0,7,3,0,0,3,25,28,28,25,21,42,42,0,34,39,42,42,39,34,8
,3,0,0,3,21,24,24,21,15,0,42,42,0,0,23,20,3,0,0,3,7,16,20,23,23,25,30,35,39,42,42,39,35,30,26,23,0,8,3,0,0,3,39,42,42,39,34,27,21,18,18,21,27,0,24,28,28,24,24,4,4,0,0,4,0,24,28,28,24,24,4,4,0,0,4,-5,-8,0,34,18
,3,0,24,24,13,13,0,34,18,3,0,28,35,39,42,42,39,35,28,24,21,20,17,14,0,4,4,0,0,0,28,30,27,19,13,11,14,30,14,11,11,13,21,31,38,42,42,38,30,21,14,7,0,0,0,4,0,0,42,0,11,11,0,0,42,42,39,35,29,25,22,22,22,19,14,8,3,0,0,0
,31,37,41,42,42,41,36,28,14,5,1,0,0,1,6,11,0,0,42,42,41,37,28,14,6,1,0,0,0,0,0,42,42,22,22,0,0,42,42,22,22,0,36,41,42,42,41,37,28,14,6,1,0,0,1,6,14,20,20,0,0,42,22,22,42,0,0,0,42,0,13,6,1,0,0,1,6,13,42,0
,0,42,42,23,23,23,0,0,42,0,0,0,0,42,0,43,0,0,0,42,0,42,0,0,1,6,14,28,37,41,42,42,41,36,28,14,6,1,0,0,0,0,42,42,40,35,25,21,18,18,0,0,1,6,14,28,37,41,42,42,41,37,28,14,6,1,0,0,17,1,0,0,42,42,39,35,25,21,18,18
,18,16,11,0,0,7,3,0,0,3,7,14,18,21,23,26,30,35,39,42,42,39,35,0,42,42,42,0,0,42,13,6,1,0,0,1,6,13,42,0,42,0,42,0,42,0,42,0,42,0,0,42,42,0,0,42,18,42,18,0,0,42,42,0,0,0,47,47,-3,-3,0,42,-3,0,47,47,-3,-3,0,31
,39,31,0,-2,-2,0,47,38,0,24,28,30,30,28,24,0,13,15,17,17,15,13,4,1,0,0,1,4,0,0,42,21,27,30,30,27,20,10,3,0,0,3,8,0,21,27,30,30,27,20,10,3,0,0,3,8,0,21,27,30,30,27,20,10,3,0,0,3,8,42,0,0,16,16,20,27,30,30,27,20
,10,3,0,0,4,0,0,37,41,42,42,27,27,0,-7,-10,-10,-7,-2,30,21,27,30,30,27,20,11,4,1,1,4,10,0,0,42,21,27,30,30,27,21,0,0,0,30,38,42,0,-10,-9,-5,30,38,42,0,0,42,16,16,30,16,0,0,0,42,0,0,30,21,27,30,30,27,21,0,21,27,30,30,27
,21,0,0,0,30,21,27,30,30,27,21,0,0,0,3,10,21,27,30,30,27,20,10,3,0,0,0,-10,30,21,27,30,30,27,20,10,3,0,0,3,9,0,21,27,30,30,27,20,10,3,0,0,3,8,30,-10,0,0,30,21,27,30,30,27,20,0,6,1,0,0,1,4,11,14,16,16,17,20,25,28
,30,30,28,24,0,30,30,38,6,1,0,0,1,6,11,0,30,9,3,0,0,3,8,30,0,0,30,0,30,0,30,0,30,0,30,0,0,30,30,0,0,30,0,30,0,-6,-10,-10,0,30,30,0,0,0,39,37,21,18,15,0,-2,0,-2,40,0,40,37,21,18,16,0,-2,0,34,37,33,37,0,0,17
,35,17,0,0,0,33,39,43,44,44,43,38,30,16,7,3,2,2,3,8,13,2,1,0,-1,-3,-8,-10,-10,-8,-4,0,30,9,3,0,0,3,8,30,0,38,38,34,34,38,38,38,34,34,38,0,16,16,20,27,30,30,27,20,10,3,0,0,4,41,41,45,45,41,36,34,0,24,28,30,30,28,24,0
,13,15,17,17,13,4,1,0,0,1,4,34,42,34,0,24,28,30,30,28,24,0,13,15,17,17,13,4,1,0,0,1,4,34,34,38,38,34,34,34,38,38,34,0,24,28,30,30,28,24,0,13,15,17,17,13,4,1,0,0,1,4,41,41,45,45,41,36,34,0,24,28,30,30,28,24,0,13,15,17
,17,13,4,1,0,0,1,4,40,40,37,34,34,37,40,38,37,36,37,38,0,14,11,11,14,21,27,30,30,27,11,9,8,7,5,0,-2,-2,0,4,0,16,16,20,27,30,30,27,20,10,3,0,0,4,34,42,34,0,16,16,20,27,30,30,27,20,10,3,0,0,4,34,34,38,38,34,34,34,38,38
,34,0,16,16,20,27,30,30,27,20,10,3,0,0,4,41,41,45,45,41,36,34,0,0,30,34,34,38,38,34,34,34,38,38,34,0,0,30,34,42,34,0,0,30,41,41,45,45,41,36,34,0,0,42,0,11,11,46,46,50,50,46,46,46,50,50,46,0,0,42,0,11,11,49,50,49,48,49,47,49
,51,51,49,47,47,0,0,0,30,30,15,15,41,41,45,45,41,36,34,0,24,28,30,30,28,24,0,13,15,17,17,13,4,1,0,0,1,4,20,27,30,30,27,20,16,16,10,3,0,0,4,0,0,42,42,42,42,41,0,0,22,22,11,11,0,0,3,10,21,27,30,30,27,20,10,3,0,0,34,42
,34,0,0,3,10,21,27,30,30,27,20,10,3,0,0,35,35,39,39,35,35,35,39,39,35,0,0,3,10,21,27,30,30,27,20,10,3,0,0,41,41,45,45,41,36,34,0,30,9,3,0,0,3,8,30,0,34,42,34,0,30,9,3,0,0,3,8,30,0,41,41,45,45,41,36,34,-3,-3,0,30
,0,30,0,-6,-10,-10,34,34,38,38,34,34,34,38,38,34,0,0,1,6,14,28,37,41,42,42,41,36,28,14,6,1,0,0,47,47,51,51,47,47,47,51,51,47,0,42,13,6,1,0,0,1,6,13,42,50,50,46,46,50,50,50,46,46,50,0,0,3,10,21,27,30,30,27,20,10,3,0,0,38
,-7,0,41,42,43,43,42,41,39,33,0,0,1,4,23,23,0,0,1,6,14,28,37,41,42,42,41,36,28,14,6,1,0,0,-6,48,44,-1,0,20,20,23,27,37,42,44,44,0,21,4,1,0,0,1,4,6,16,16,0,38,39,40,40,38,36,30,5,-1,-3,-5,-5,-4,-3,19,19,0,24,28,30,30
,28,24,0,13,15,17,17,13,4,1,0,0,1,4,41,41,45,45,41,36,34,0,0,30,41,41,45,45,41,36,34,0,0,3,10,21,27,30,30,27,20,10,3,0,0,41,41,45,45,41,36,34,0,30,9,3,0,0,3,8,30,0,41,41,45,45,41,36,34,0,0,30,21,27,30,30,27,21,0,35
,38,34,38,0,0,42,0,42,44,47,43,47,0,37,41,43,43,41,37,13,26,28,30,30,26,17,14,13,13,14,17,0,0,0,23,26,33,34,40,43,43,40,33,26,23,23,0,0,0,14,7,3,0,0,3,7,14,18,21,22,25,28,42,38,38,42,42,0,0,21,21,0,0,21,21,0,17,19,22,22
,19,12,11,10,9,7,0,0,43,0,34,43,21,0,43,43,0,34,43,21,6,6,8,22,0,0,0,28,42,38,38,42,42,0,35,22,8,35,22,8,35,35,0,35,22,8,35,22,8,0,34,37,37,34,34,37,34,37,34,24,21,21,24,24,24,21,24,21,11,11,8,8,11,11,8,11,8,-2,-2,-5
,-5,-2,-2,-5,-2,-5,40,43,43,40,40,43,40,43,40,30,27,27,30,30,30,27,30,27,17,17,14,14,17,17,14,17,14,4,4,1,1,4,4,1,4,1,34,37,37,34,34,37,34,37,34,24,21,21,24,24,24,21,24,21,11,11,8,8,11,11,8,11,8,-2,-2,-5,-5,-2,-2,-5,-2,-5,40,43
,43,40,40,43,40,43,40,30,27,27,30,30,30,27,30,27,17,17,14,14,17,17,14,17,14,4,4,1,1,4,4,1,4,1,0,34,37,37,34,34,37,34,37,34,24,21,21,24,24,24,21,24,21,11,11,8,8,11,11,8,11,8,-2,-2,-5,-5,-2,-2,-5,-2,-5,40,43,43,40,40,43,40,43,40
,30,27,27,30,30,30,27,30,27,17,17,14,14,17,17,14,17,14,4,4,1,1,4,4,1,4,1,34,37,37,34,34,37,34,37,34,24,21,21,24,24,24,21,24,21,11,11,8,8,11,11,8,11,8,-2,-2,-5,-5,-2,-2,-5,-2,-5,40,43,43,40,40,43,40,43,40,30,27,27,30,30,30,27,30
,27,17,17,14,14,17,17,14,17,14,4,4,1,1,4,4,1,4,1,34,37,37,34,34,37,34,37,34,24,21,21,24,24,24,21,24,21,11,11,8,8,11,11,8,11,8,-2,-2,-5,-5,-2,-2,-5,-2,-5,40,43,43,40,40,43,40,43,40,30,27,27,30,30,30,27,30,27,17,17,14,14,17,17,14
,17,14,4,4,1,1,4,4,1,4,1,34,37,37,34,34,37,34,37,34,24,21,21,24,24,24,21,24,21,11,11,8,8,11,11,8,11,8,-2,-2,-5,-5,-2,-2,-5,-2,-5,40,43,43,40,40,43,40,43,40,30,27,27,30,30,30,27,30,27,17,17,14,14,17,17,14,17,14,4,4,1,1,4,4
,1,4,1,0,39,42,42,39,39,42,39,42,39,39,42,42,39,39,42,39,42,39,36,36,33,33,36,36,33,36,33,30,27,27,30,30,30,27,30,27,30,27,30,27,30,27,3,6,6,3,3,6,3,6,3,33,36,36,33,33,36,33,36,33,39,42,42,39,39,42,39,42,39,39,42,42,39,39,42,39
,42,39,33,36,36,33,33,36,33,36,33,24,24,21,21,24,24,21,24,21,21,24,24,21,21,24,21,24,21,21,24,24,21,21,24,21,24,21,15,18,18,15,15,18,15,18,15,12,12,9,9,12,12,9,12,9,9,12,12,9,9,12,9,12,9,9,12,12,9,9,12,9,12,9,0,0,-3,-3,0,0
,-3,0,-3,-3,0,0,-3,-3,0,-3,0,-3,-3,0,0,-3,-3,0,-3,0,-3,15,18,18,15,15,18,15,18,15,3,6,6,3,3,6,3,6,3,30,27,27,30,30,30,27,30,27,30,27,30,27,30,27,18,15,15,18,18,18,15,18,15,18,15,18,15,18,15,6,3,3,6,6,6,3,6,3,6,3
,6,3,6,3,41,40,42,39,39,42,42,42,39,42,39,42,39,42,39,42,39,36,36,33,33,36,36,33,36,33,33,36,36,33,33,36,33,36,33,33,36,36,33,33,36,33,36,33,30,27,27,30,30,30,27,30,27,30,27,30,27,30,27,18,15,15,18,18,18,15,18,15,18,15,18,15,18,15,12,12
,9,9,12,12,9,12,9,9,12,12,9,9,12,9,12,9,9,12,12,9,9,12,9,12,9,6,3,3,6,6,6,3,6,3,6,3,6,3,6,3,24,24,21,21,24,24,21,24,21,21,24,24,21,21,24,21,24,21,21,24,24,21,21,24,21,24,21,0,0,-3,-3,0,0,-3,0,-3,-3,0,0,-3
,-3,0,-3,0,-3,-3,0,0,-3,-3,0,-3,0,-3,-1,0,43,-2,0,17,17,43,-2,0,24,24,-2,43,17,17,0,17,17,43,-2,43,-2,0,17,17,-2,17,-2,-1,-1,0,17,17,-2,24,24,17,-1,-1,0,43,24,24,17,17,-2,43,-2,0,43,-2,43,-2,0,17,17,-2,24,24,-2,0,43,24,24,43
,17,17,0,24,24,43,24,43,0,24,24,43,17,17,24,-1,-1,0,17,17,-2,0,24,24,43,0,24,24,24,43,0,17,17,17,-2,0,17,17,43,-2,-1,-1,0,17,17,0,17,17,43,-2,0,24,24,-2,43,17,17,0,17,17,43,-2,43,-2,0,24,24,43,17,17,43,0,17,17,-2,24,24,-2,0,24
,24,43,17,17,24,24,43,0,17,17,-2,24,24,17,17,-2,0,43,24,24,17,17,-2,43,-2,-1,-1,0,17,17,24,24,0,43,24,24,17,17,-2,43,24,24,17,17,-2,0,24,24,24,43,17,17,0,24,24,43,24,43,24,24,0,17,17,17,-2,24,24,0,17,17,-2,17,-2,17,17,0,24,24,43,24
,43,0,24,24,43,17,17,24,0,17,17,-2,24,24,17,0,17,17,-2,17,-2,0,17,17,43,-2,43,-2,0,43,-2,17,17,24,24,0,43,24,24,0,-2,17,17,0,43,43,0,0,43,43,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,43
,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,19,19,0,0,0,19,19,0,19,0,19,0,19,0,19,0,19,0,0,19,19,0,19,0,19,0,19,0,19,0,0,19,19,0,19,0,19,0,19,0,19,0,0,19,19,0,19,0,19,0,19
,0,19,0,0,19,19,0,19,0,19,0,19,0,19,0,19,0,0,0,43,43,0,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,0,0,43,43,0,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,43,0,43
,0,43,0,43,0,0,24,24,43,43,24,43,24,43,24,43,24,43,24,43,24,24,43,43,24,43,24,43,24,43,24,43,24,24,43,43,24,43,24,43,24,43,24,43,24,24,43,43,24,43,24,43,24,43,24,43,24,24,43,43,24,43,24,43,24,43,24,43,24,43,24,0,0,27,30,30,27,20,10,3
,0,0,3,30,0,18,18,21,26,28,28,-9,18,15,6,4,4,0,0,34,34,28,0,0,32,32,0,32,32,0,3,0,0,22,42,42,39,0,24,24,22,20,4,2,0,0,2,4,20,22,30,30,0,27,11,5,2,2,5,10,27,9,2,-4,-10,-4,-4,0,27,30,30,27,-3,21,30,30,29,0,43,43
,43,29,20,13,10,10,13,20,26,29,29,26,19,20,-4,-4,-4,10,0,42,42,35,28,14,7,0,0,7,14,28,35,42,21,21,0,0,0,11,12,15,19,28,37,41,42,42,41,36,28,19,15,12,11,0,0,0,24,24,22,20,4,2,0,0,2,4,20,22,24,24,43,43,0,10,3,0,0,3,10,16
,19,19,16,9,10,16,19,19,16,9,10,3,0,0,3,10,0,0,3,10,21,27,30,30,27,20,10,3,0,0,38,-7,0,42,41,39,34,30,14,0,1,3,8,12,28,22,22,0,0,29,36,41,42,42,41,36,29,0,0,17,17,5,5,28,28,0,0,0,27,27,43,12,0,0,0,43,27,12,0,0
,0,43,27,12,0,41,42,43,43,42,41,39,33,-3,0,-1,-2,-3,-3,-2,-1,1,7,43,0,39,39,43,43,39,0,0,4,4,0,22,22,0,26,29,25,29,17,20,16,20,0,34,27,24,24,27,34,40,43,43,40,33,34,0,0,0,8,8,0,0,8,8,4,8,0,8,0,0,0,0,4,4,0,0
,4,4,0,4,0,-1,-1,0,38,43,43,0,27,0,24,43,34,40,43,43,40,34,24,0,39,42,43,43,41,37,35,34,33,25,25,0,0,19,19,0,0,19,0,19,0,19,0,19,0,19,0,0,19,19,0,19,0,19,0,19,0,19,0,0,19,19,0,19,0,0));
begin
   EuroStyleFont:= the_EuroStyleFont'access;
end Graph.F.EuroStyle;