package body Graph.F.Helv_BI is

the_Helv_BIFont: aliased Vector_Font:=(
 first_char => character'val(32), 
 last_char  => character'val(255),
 n_vertices => 3771,
 name => "Helv_BI     ",
 height   => 12,
 downline => -3,
 width=> (5,4,6,9,9,12,11,3,6,4,7,8,3,5,3,6,8,6,8,8,9,8,8,8,8,8,3,3,8,9,8,8,15,11,10,11,11,11,10,11,11,4,9,11,8,13,11,11,11,
11,11,10,10,10,10,15,12,11,10,5,4,4,8,10,5,8,9,8,9,8,6,8,9,4,4,8,4,13,9,9,8,9,6,8,5,9,8,13,10,8,8,7,3,5,9,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,
3,8,10,9,10,2,9,6,12,7,8,9,5,12,2,6,8,6,6,5,9,9,3,5,5,7,8,11,11,12,8,11,11,11,11,11,11,17,11,11,11,11,11,4,4,4,4,11,11,11,11,11,11,11,6,13,10,10,10,10,11,10,9,8,8,8,8,8,8,13,8,8,8,8,8,4,5,5,5,9,
9,9,9,9,9,9,8,10,9,9,9,9,8,9,8),
 index=> (1,2,13,22,55,90,115,149,154,165,176,187,196,202,207,212
,227,246,261,280,302,316,340,363,377,402,428,437,447,464,473,490,508,554,577,606,632,655,675,691,720,741,750,763,786,798,831,854,878,897,925,952,983,996,1012,1032,1067,1088,1106,1117,1132,1141,1156
,1171,1174,1179,1199,1221,1240,1262,1281,1298,1323,1341,1352,1366,1385,1394,1422,1438,1457,1478,1503,1516,1539,1555,1571,1586,1612,1629,1650,1659,1680,1685,1706,1717,1718,1719,1720,1721,1722,1723,1724,1725,1726,1727,1728,1729,1730,1731
,1732,1733,1734,1735,1740,1745,1746,1747,1748,1749,1750,1751,1752,1753,1754,1755,1756,1757,1758,1759,1770,1794,1818,1835,1863,1872,1908,1917,1954,1967,1984,1992,1997,2031,2034,2043,2056,2067,2080,2085,2101,2124,2129,2135,2145,2160,2177
,2200,2226,2252,2270,2297,2324,2352,2381,2412,2435,2470,2499,2523,2547,2572,2600,2613,2626,2640,2657,2681,2710,2738,2766,2795,2825,2857,2866,2896,2916,2936,2957,2981,3003,3021,3049,3073,3097,3122,3148,3176,3201,3233,3258,3281,3304,3328
,3355,3366,3377,3389,3404,3431,3453,3476,3499,3523,3548,3575,3588,3611,3631,3651,3672,3696,3721,3743),
 vertex_x=> (38,33,-34,33,-34,36,-36,34,-34,35,-35,37,37,-37,34,-34,36,-36,33,-33,39,38,-41,37,-40,34,-37,33,-36,37,-41,-33,37,-33,-41,40,-40,38,-38,36,-36,34,-34,39,-39,35,-35,33,-41,-33,41,-33,-41,42,38,-41,37,-40,34,-37
,-37,33,-36,33,-36,38,-41,37,-40,36,-39,-39,-34,36,-39,35,-38,35,-38,34,-37,38,-34,-40,35,-40,34,-40,42,34,-35,41,-43,44,-44,41,-43,-43,-41,-41,40,-40,37,-37,34,-36,-36,-34,-34,33,-33,35,-41,45,33,-33,-37,40,-43,38
,-41,41,-41,-36,40,-40,-37,-37,-41,35,-38,-42,38,-42,33,-37,33,-37,39,-39,36,-36,34,-34,-43,36,-42,44,34,-34,33,-33,36,37,-35,-35,35,-33,-33,-36,38,-34,-34,39,34,-36,-36,-33,32,-34,-34,31,-35,-35,37,38,-36,-36,33,-35
,-35,37,-37,34,-34,40,37,-37,36,-36,33,-40,33,-40,41,33,-34,-34,33,-33,36,33,-36,33,-36,38,33,-34,33,-34,36,36,-38,38,-36,-36,33,-35,-35,33,-35,37,-37,34,-34,39,38,-38,-34,36,-39,-39,35,-35,-39,37,-34,-34,40,-40
,-35,33,-33,-38,41,38,-36,-36,35,-35,34,-38,33,-37,-37,34,-38,33,-37,39,34,-36,35,-38,34,-37,39,-33,-40,-40,-35,36,-39,-39,-34,39,-33,-40,41,35,-37,34,-36,-39,-39,33,-35,34,-34,-37,40,-40,-35,36,-39,36,-39,33,-38,-38
,41,41,-39,-39,38,-38,41,-33,-41,41,-33,-41,40,-40,42,34,-36,33,-35,34,-34,-37,40,-40,-34,36,-40,36,-40,40,-36,-36,35,-39,-39,-33,35,-35,41,40,-38,-33,-39,-39,39,-39,-36,37,-35,-39,-34,-34,-38,-38,33,-37,37,-33,-33,35
,-40,41,33,-35,37,-34,-34,33,-36,36,-40,-33,35,-40,-33,41,37,-39,34,-34,40,-40,-35,-35,36,-39,-39,37,-34,-34,33,-33,-38,-38,35,-39,34,-39,33,-40,41,33,-35,-40,-34,-34,36,-36,34,-34,-37,34,-37,36,-40,-40,36,-40,38,-34
,-39,-39,-35,-35,33,-38,41,34,-35,34,-35,33,-34,33,-34,36,33,-34,-34,34,-35,34,-35,33,-33,36,38,-40,38,-40,40,-37,-33,-33,-36,40,-37,-33,35,-39,35,-39,41,33,-40,33,-40,33,-40,33,-40,42,33,-36,-40,-40,-37,33,-35,33
,-35,33,-36,-40,34,-38,34,-38,41,34,-35,34,-35,33,-35,-39,-39,34,-34,-40,33,-36,35,-40,34,-40,41,46,-47,45,-46,46,-45,-42,-44,44,-45,37,-36,-33,-34,37,-36,-34,-34,44,-42,-42,41,-39,-36,-36,38,-40,-43,44,-47,-47,-43,-38
,36,-39,36,-40,37,-37,33,-33,38,-44,43,-43,48,37,-37,-41,-39,-39,-35,-35,34,-34,43,-43,-35,38,-38,33,-37,35,-42,41,-41,42,-42,44,40,-42,39,-42,42,-42,-35,38,-42,38,-42,34,-38,33,-37,33,-41,-41,-35,-35,34,-41,34,-41
,33,-40,34,-34,43,41,-43,40,-43,42,-39,-35,39,-42,38,-41,35,-35,-42,33,-37,37,-41,33,-38,33,-33,41,-34,-34,44,33,-33,-39,41,-41,-33,39,-43,34,-38,38,-43,43,-43,41,-35,-35,35,-42,-42,34,-34,44,34,-38,33,-37,34,-41
,34,-41,35,-43,35,-35,-43,34,-34,33,-41,33,-41,44,33,-33,34,-38,35,-42,42,-35,-35,34,-41,34,-41,34,-34,43,41,-43,43,-40,-35,40,-43,39,-42,35,-35,-42,39,-43,-39,33,-37,39,-43,37,-41,33,-38,33,-33,42,-34,-34,44,43
,-43,40,-40,36,-36,33,-33,42,-42,41,-41,35,-35,34,-42,34,-42,34,-34,44,36,-36,33,-33,35,-35,34,-34,37,41,-41,33,-33,-39,-39,38,-38,-34,-34,40,-40,42,36,-36,33,-33,-42,41,-41,-37,40,-40,38,-42,38,-43,37,-43,34,-41
,35,-35,34,-34,44,36,-36,33,-33,-40,33,-40,35,-35,34,-34,41,42,-44,-44,42,-44,43,-45,-45,39,-37,-41,-41,33,-33,37,-37,-40,-40,-45,42,-42,-45,35,-38,38,-38,-35,-35,43,-43,34,-34,46,43,-43,33,-33,40,-40,36,-36,39,-39
,37,-37,38,-38,42,-42,41,-41,35,-35,34,-34,44,43,-43,-38,41,-41,-34,-34,35,-35,-42,-42,39,-43,33,-37,37,-41,35,-39,33,-38,33,-33,44,33,-33,43,-43,-35,39,-43,34,-38,34,-42,-42,-35,-35,34,-41,34,-34,44,40,-42,43,-43
,38,-41,38,-38,-35,35,-35,-42,-42,39,-43,33,-37,37,-41,33,-33,-38,41,-41,41,-34,-34,44,41,-41,33,-33,42,-39,-43,39,-43,39,-43,34,-38,34,-42,-42,-35,-35,40,-40,34,-41,35,-43,34,-34,44,40,-42,34,-34,-41,33,-35,39,-42
,38,-41,38,-41,34,-37,-41,33,-36,37,-40,-40,-34,36,-40,35,-39,39,-35,-35,-41,43,35,-35,36,-40,37,-37,36,-36,33,-42,33,-42,43,42,-42,39,-39,-33,-33,35,-35,38,-34,-34,40,-40,41,-41,43,41,-41,36,-36,33,-33,42,-39,-39
,40,-40,38,-38,37,-37,35,-35,34,-34,43,46,-46,47,-44,-44,45,-45,43,-43,42,-42,39,-39,38,-41,36,-36,34,-37,37,-41,-41,34,-38,35,-35,33,-33,34,-41,40,-40,34,-34,48,41,-41,36,-36,40,-40,37,-37,39,-39,38,-38,42,-37
,-43,35,-40,-34,33,-44,45,35,-35,33,-36,-36,37,-37,34,-34,34,-38,35,-35,36,-42,36,-43,44,35,-42,-35,40,-33,-41,35,-42,-33,-41,43,35,-37,37,-35,-35,32,-32,-35,32,-35,33,-33,34,-34,38,36,-36,33,-33,35,-35,34,-34,37
,36,-36,-33,31,-33,-33,31,-33,33,-36,35,-35,34,-34,37,36,-36,37,-39,33,-35,38,-38,34,-34,37,-37,35,-35,41,33,-41,43,34,-36,33,-35,38,35,-37,34,-36,-39,-39,36,-34,-34,-40,-40,-35,33,-33,-36,38,-38,33,-39,41,36,-36
,33,-33,37,-40,-40,-33,36,-39,37,-41,34,-38,41,-41,-34,34,-34,35,-35,42,38,-40,37,-39,39,-39,-36,38,-38,-35,33,-33,33,-37,39,-34,-34,-40,41,41,-41,35,-35,36,-34,-34,-40,38,-38,36,-40,33,-37,33,-33,-39,40,-40,39,-39
,42,40,-38,-35,39,-37,-33,-37,33,-40,-40,-34,-34,-39,36,-39,-39,33,-33,41,33,-33,38,-35,-35,34,-38,37,-33,-37,36,-36,33,-37,34,-34,39,32,-34,35,-37,-33,36,-34,-34,-40,35,-32,-38,-38,36,-40,33,-37,33,-33,-39,40,-40,39
,-39,41,39,-39,40,-40,-38,-34,36,-36,33,-33,41,-41,-34,35,-35,34,-34,42,35,-36,35,-36,33,-33,35,-35,34,-34,37,35,-36,35,-36,30,-32,30,-33,-33,35,-35,34,-34,37,37,-39,36,-36,33,-33,-39,38,-38,-34,34,-39,33,-40,35
,-35,34,-34,41,36,-36,33,-33,35,-35,34,-34,37,43,-43,38,-38,33,-33,39,-42,34,-37,39,-43,34,-38,45,-45,-34,40,-40,35,-35,44,-44,39,-39,34,-34,46,39,-39,40,-40,-38,-34,33,-33,41,-41,-34,35,-35,34,-34,42,41,-41,36
,-39,35,-38,33,-33,37,-41,-37,-33,-37,40,-40,-34,-34,-40,42,37,-39,-39,-33,38,-36,-40,32,-32,35,-35,33,-37,40,-40,-34,34,-34,33,-33,41,41,-41,38,-38,35,-35,35,-38,33,-33,36,-40,-36,37,-33,-39,38,-34,-34,-40,40,-40,39
,-39,42,33,-33,34,-37,34,-38,34,-38,35,-35,34,-34,39,38,-40,33,-35,39,-39,-35,-35,34,-34,-38,-38,36,-39,34,-37,34,-39,-33,39,-34,-40,41,33,-35,36,-34,-34,36,-36,33,-36,33,-37,33,-37,35,-35,38,41,-41,-36,35,-35,37
,-34,-34,33,-33,-40,39,-39,40,-40,42,39,-39,-34,35,-35,37,-40,36,-33,-33,38,-38,-34,-34,41,44,-44,-39,-41,38,-38,35,-35,42,-45,37,-34,-34,43,-43,-39,-39,36,-36,-40,-40,33,-33,34,-40,46,40,-37,-37,35,-38,-38,39,-39,-35
,36,-36,-40,34,-42,33,-41,43,39,-39,-34,37,-40,38,-38,-34,36,-36,31,-34,-34,35,-35,-31,33,-33,32,-37,41,34,-40,-33,-39,34,-40,-33,-39,41,38,-36,-36,39,-37,-37,35,-35,36,-34,-34,33,-33,-36,33,-35,36,-39,33,-37,40,34
,-34,33,-33,36,35,-37,35,-37,32,-34,-34,37,-37,-34,35,-35,34,-36,-36,31,-33,-33,31,-34,38,38,-40,33,-35,37,-39,34,-36,33,-40,42,38,38,38,38,38,38,38,38,38,38,38,38,38,38,38,38,38,38,34,-36,33,-35,38,34
,-36,33,-35,38,38,38,38,38,38,38,38,38,38,38,38,38,38,38,34,-35,34,-35,32,-32,34,-34,33,-33,36,39,-39,-33,38,-40,39,-37,-35,39,-37,-37,38,-36,-36,34,-34,36,-33,-33,38,-34,-34,-40,41,42,-40,-37,41,-39,-34,-38
,34,-34,33,-36,38,-41,38,-34,-39,42,-36,-36,33,-40,35,-35,43,40,-40,39,-39,35,-35,34,-34,33,-41,33,-41,33,-41,33,-41,42,35,-37,36,-36,39,-42,42,-39,-39,41,-41,38,-38,40,-40,36,-36,34,-41,34,-41,34,-41,33,-41,37
,-37,43,34,-34,34,-34,33,-33,33,-33,35,39,-41,40,-40,-36,-36,34,-34,-37,33,-35,38,-41,37,-40,34,-37,33,-36,36,-40,35,-39,-39,35,-40,35,-41,34,-40,41,-35,-35,34,-40,42,36,-37,36,-37,33,-34,33,-34,39,41,-40,-37,41
,-40,-37,43,-43,43,-43,41,-42,41,-42,35,-36,35,-36,34,-34,34,-34,36,-38,36,-38,44,-44,37,-40,37,-40,36,-36,33,-33,45,38,-38,33,-33,-37,-37,-34,36,-36,34,-34,-38,40,36,-38,35,-33,-37,36,-39,35,-38,33,-36,37,-37,34
,-34,-40,41,40,-40,-33,39,-39,33,-40,42,33,-36,33,-36,38,43,-43,43,-43,41,-42,41,-42,40,-40,-38,40,-40,35,-36,-36,-39,35,-36,34,-34,34,-34,44,-44,37,-40,37,-40,36,-39,33,-33,45,25,-33,35,37,-37,34,-36,34,-36,33
,-33,39,37,-37,36,-36,33,-40,33,-40,33,-40,33,-40,41,34,-35,-37,34,-37,36,-36,37,-33,-37,39,33,-34,36,-37,35,-37,35,-37,34,-37,36,-36,39,34,-36,33,-35,38,39,-39,36,-40,-40,41,-41,33,-33,35,-35,33,-40,34,-34,42
,33,-37,33,-37,33,-37,33,-38,34,-34,-41,35,-35,-41,40,-40,39,-39,37,-37,36,-36,42,33,-34,33,-34,36,36,-36,-34,33,-35,38,34,-36,-36,34,-36,33,-36,35,-35,38,38,-38,35,-37,-37,36,-34,-34,33,-33,35,-38,33,-36,40,38
,-40,-36,35,-37,37,-40,35,-38,34,-37,39,-39,-33,36,-36,41,40,-42,39,-41,34,-36,-36,34,-36,33,-35,33,-36,43,-43,-38,-42,-42,35,-40,35,-35,44,40,-41,-43,40,-42,34,-36,-36,34,-36,33,-35,40,-43,42,-42,33,-36,43,-39,-43
,35,-35,35,-40,44,33,-34,36,-37,42,-44,40,-42,35,-37,35,-37,35,-37,34,-37,44,-44,-39,-43,-43,37,-42,36,-36,45,38,-39,38,-39,40,-38,-34,-34,39,-39,-33,37,-40,33,-38,33,-39,41,37,-37,-41,-39,-39,-35,-35,39,-41,38,-40
,34,-34,43,-43,-35,38,-38,33,-37,35,-42,41,-41,42,-42,44,41,-43,40,-42,37,-37,-41,-39,-39,-35,-35,34,-34,43,-43,-35,38,-38,33,-37,35,-42,41,-41,42,-42,44,39,-40,-41,41,-42,37,-37,-41,-39,-39,-35,-35,34,-34,43,-43,-35
,38,-38,33,-37,35,-42,41,-41,42,-42,44,41,-42,38,-39,40,-40,37,-37,-41,-39,-39,-35,-35,34,-34,43,-43,-35,38,-38,33,-37,35,-42,41,-41,42,-42,44,41,-42,41,-42,38,-39,38,-39,37,-37,-41,-39,-39,-35,-35,34,-34,43,-43,-35
,38,-38,33,-37,35,-42,41,-41,42,-42,44,41,-41,-39,-39,-35,-35,34,-34,-38,38,-41,43,-43,-35,37,-41,33,-37,35,-42,42,-42,44,34,-34,38,-38,-49,36,-36,-41,35,-35,-42,41,-45,33,-37,37,-37,36,-42,41,-47,41,-47,40,-47,40
,-47,35,-42,-42,41,-41,39,-49,50,41,-43,34,-36,40,-43,42,-39,-35,39,-42,35,-35,35,-35,-42,37,-41,37,-33,-33,37,-41,33,-38,41,-34,-34,44,38,-40,37,-39,34,-38,33,-37,34,-41,34,-41,35,-43,43,-35,-35,34,-34,33,-41,33
,-41,44,39,-41,38,-40,34,-38,33,-37,34,-41,34,-41,35,-43,43,-35,-35,34,-34,33,-41,33,-41,44,38,-39,-40,40,-41,34,-38,33,-37,34,-41,34,-41,35,-43,43,-35,-35,34,-34,33,-41,33,-41,44,40,-41,40,-41,37,-38,37,-38,34
,-38,33,-37,34,-41,34,-41,35,-43,43,-35,-35,34,-34,33,-41,33,-41,44,36,-36,35,-37,34,-36,33,-33,35,-35,34,-34,37,36,-36,36,-38,35,-37,33,-33,35,-35,34,-34,37,34,-35,-36,36,-37,36,-36,33,-33,35,-35,34,-34,37,37
,-38,37,-38,34,-35,34,-35,36,-36,33,-33,35,-35,34,-34,37,41,-41,-33,33,-33,-39,39,-43,38,-43,38,-33,-38,43,-43,41,-35,-35,35,-42,-42,34,-34,44,40,-41,37,-38,39,-39,43,-43,33,-33,40,-40,36,-36,39,-39,37,-37,38,-38
,42,-42,41,-41,35,-35,34,-34,44,38,-40,37,-39,43,-43,-38,41,-41,-34,-34,35,-35,-42,-42,39,-43,33,-37,37,-41,35,-39,33,-38,33,-33,44,39,-41,38,-40,43,-43,-38,41,-41,-34,-34,35,-35,-42,-42,39,-43,33,-37,37,-41,35,-39
,33,-38,33,-33,44,38,-39,-40,40,-41,43,-43,-38,41,-41,-34,-34,35,-35,-42,-42,39,-43,33,-37,37,-41,35,-39,33,-38,33,-33,44,40,-41,37,-38,39,-39,43,-43,-38,41,-41,-34,-34,35,-35,-42,-42,39,-43,33,-37,37,-41,35,-39,33
,-38,33,-33,44,40,-41,40,-41,37,-38,37,-38,43,-43,-38,41,-41,-34,-34,35,-35,-42,-42,39,-43,33,-37,37,-41,35,-39,33,-38,33,-33,44,33,-38,33,-38,33,-38,33,-38,39,42,-42,-34,36,-36,-44,40,-44,-44,34,-38,38,-42,37,-37
,39,-44,34,-39,43,-43,35,-35,34,-34,34,-45,33,-44,46,42,-42,39,-39,-33,-33,37,-39,36,-38,35,-35,38,-34,-34,40,-40,41,-41,43,42,-42,39,-39,-33,-33,38,-40,37,-39,35,-35,38,-34,-34,40,-40,41,-41,43,37,-38,-39,39,-40
,42,-42,39,-39,-33,-33,35,-35,38,-34,-34,40,-40,41,-41,43,39,-40,39,-40,36,-37,36,-37,42,-42,39,-39,-33,-33,35,-35,38,-34,-34,40,-40,41,-41,43,38,-40,37,-39,35,-35,33,-36,-36,37,-37,34,-34,34,-38,35,-35,36,-42,36
,-43,44,33,-33,-40,42,-42,-34,38,-42,36,-36,34,-34,-41,-41,-34,35,-35,43,37,-37,-40,-40,36,-34,-34,33,-33,38,-41,41,-38,-41,41,-38,-34,39,-39,37,-40,-40,36,-41,41,-35,-35,42,35,-37,34,-36,-39,-39,37,-39,36,-38,36,-34
,-34,-40,-40,-35,33,-33,-36,38,-38,33,-39,41,35,-37,34,-36,-39,-39,38,-40,37,-39,36,-34,-34,-40,-40,-35,33,-33,-36,38,-38,33,-39,41,36,-37,-38,38,-39,35,-37,34,-36,-39,-39,36,-34,-34,-40,-40,-35,33,-33,-36,38,-38,33,-39
,41,39,-40,36,-37,38,-38,35,-37,34,-36,-39,-39,36,-34,-34,-40,-40,-35,33,-33,-36,38,-38,33,-39,41,39,-40,39,-40,36,-37,36,-37,35,-37,34,-36,-39,-39,36,-34,-34,-40,-40,-35,33,-33,-36,38,-38,33,-39,41,35,-37,34,-36,-39
,-39,39,-39,-37,-37,-39,36,-34,-34,-40,-40,-35,33,-33,-36,38,-38,33,-39,41,45,-43,-40,44,-42,-38,-42,35,-37,34,-36,33,-33,-37,34,-34,-45,-45,-35,41,-44,-44,36,-40,35,-39,44,-39,-39,38,-38,46,38,-40,39,-39,-36,34,-36,36
,-39,35,-38,35,-38,33,-33,-37,33,-37,33,-37,39,-34,-34,-40,41,40,-38,-35,39,-37,-33,-37,37,-39,36,-38,33,-40,-40,-34,-34,-39,36,-39,-39,33,-33,41,40,-38,-35,39,-37,-33,-37,37,-39,36,-38,33,-40,-40,-34,-34,-39,36,-39,-39
,33,-33,41,36,-37,-38,38,-39,40,-38,-35,39,-37,-33,-37,33,-40,-40,-34,-34,-39,36,-39,-39,33,-33,41,39,-40,39,-40,36,-37,36,-37,40,-38,-35,39,-37,-33,-37,33,-40,-40,-34,-34,-39,36,-39,-39,33,-33,41,34,-36,33,-33,33,-35
,35,-35,34,-34,37,35,-37,34,-36,33,-33,35,-35,34,-34,38,34,-35,-36,36,-37,33,-33,35,-35,34,-34,38,36,-37,36,-37,33,-34,33,-34,33,-33,35,-35,34,-34,38,39,-41,-41,35,-33,-36,38,-41,38,-41,37,-40,35,-38,33,-33,37
,-41,-37,-33,-37,40,-40,-34,-34,-41,42,39,-40,36,-37,38,-38,39,-39,40,-40,-38,-34,33,-33,41,-41,-34,35,-35,34,-34,42,37,-39,36,-38,41,-41,36,-39,35,-38,33,-33,37,-41,-37,-33,-37,40,-40,-34,-34,-40,42,37,-39,36,-38,41
,-41,36,-39,35,-38,33,-33,37,-41,-37,-33,-37,40,-40,-34,-34,-40,42,36,-37,-38,38,-39,41,-41,36,-39,35,-38,33,-33,37,-41,-37,-33,-37,40,-40,-34,-34,-40,42,39,-40,36,-37,38,-38,41,-41,36,-39,35,-38,33,-33,37,-41,-37,-33
,-37,40,-40,-34,-34,-40,42,39,-40,39,-40,36,-37,36,-37,41,-41,36,-39,35,-38,33,-33,37,-41,-37,-33,-37,40,-40,-34,-34,-40,42,36,-37,36,-37,36,-37,36,-37,33,-40,33,-40,41,36,-39,36,-39,37,-41,34,-38,41,-41,40,-40,-34
,35,-35,-41,34,-34,34,-42,33,-41,43,37,-39,36,-38,41,-41,-36,35,-35,37,-34,-34,33,-33,-40,39,-39,40,-40,42,38,-40,37,-39,41,-41,-36,35,-35,37,-34,-34,33,-33,-40,39,-39,40,-40,42,37,-38,-39,39,-40,41,-41,-36,35,-35
,37,-34,-34,33,-33,-40,39,-39,40,-40,42,39,-40,39,-40,36,-37,36,-37,41,-41,-36,35,-35,37,-34,-34,33,-33,-40,39,-39,40,-40,42,39,-39,-34,37,-39,36,-38,37,-40,38,-38,-34,36,-36,31,-34,-34,35,-35,-31,33,-33,32,-37,41
,36,-36,37,-40,-40,-33,36,-39,37,-41,34,-38,41,-41,-34,33,-33,35,-35,34,-34,42,38,-39,38,-39,35,-36,35,-36,39,-39,-34,37,-40,38,-38,-34,36,-36,31,-34,-34,35,-35,-31,33,-33,32,-37,41),
 vertex_y=> (0,0,0,1,1,11,9,8,3,11,5,0,11,9,11,9,11,8,11,8,0,7,10,1,4,7,10,1,4,0,4,4,11,7,7,11,6,5,0,11,6,5,0,9,2,9,2,0,8,8,11,3,3,0,11,8,11,8,3,0,8,2,-1,3,0,9,9,4,4,5,5,1,1,11,11,0,0,6,6,7
,7,12,8,2,10,10,9,3,0,0,1,9,11,4,2,0,0,5,5,0,3,1,10,8,6,6,11,11,6,9,7,2,8,0,2,4,8,1,4,6,9,0,3,8,8,11,11,6,10,0,0,4,4,0,3,7,4,0,5,1,10,6,5,1,1,7,1,0,11,9,11,8,0,11,9,6,-3,-1,5,8
,11,7,-3,0,11,9,3,0,-3,-1,2,-3,1,11,0,10,8,11,10,8,11,9,7,9,7,0,9,2,9,2,5,5,6,6,0,-2,-1,1,1,0,0,3,3,4,4,0,0,0,1,1,0,8,10,11,9,5,0,2,6,1,3,11,7,4,0,0,4,1,1,11,11,2,7,10,10,0,0,9,9,5
,0,2,6,11,0,10,10,0,2,0,7,11,7,11,3,9,9,8,8,0,9,9,8,11,8,11,0,0,7,10,10,11,11,5,0,1,1,8,0,9,11,9,11,11,2,2,0,2,0,0,7,10,10,5,5,6,6,1,1,7,0,9,9,0,3,0,10,2,2,11,3,3,10,2,0,5,7,2,0,2
,0,0,3,6,6,0,4,10,10,11,11,6,7,7,1,1,9,5,0,9,11,6,6,2,9,11,11,0,0,4,9,1,1,7,3,7,11,7,2,10,10,0,0,2,6,3,0,1,4,7,11,11,5,10,10,0,2,2,9,7,7,10,10,4,11,11,6,0,0,5,4,1,1,7,0,4,8,3,2,9
,0,2,0,5,5,9,11,9,2,0,0,8,11,0,4,9,4,8,11,7,2,10,10,4,1,1,0,6,6,7,7,0,0,1,1,0,-2,-1,1,6,6,7,7,1,0,0,2,2,8,8,1,4,4,6,3,9,6,6,3,3,7,7,0,3,3,4,4,6,6,7,7,0,9,6,6,4,7,2,2,8
,8,1,4,4,3,3,7,7,0,0,0,1,1,9,11,11,7,8,10,10,8,11,3,8,3,9,0,-1,-1,-2,-2,9,9,6,6,10,10,-2,-2,1,1,10,10,8,7,7,7,0,8,8,5,2,0,0,3,0,3,7,11,11,3,0,4,8,6,1,6,1,-3,-3,8,0,0,3,7,11,11,8,4,1
,2,0,0,3,3,9,6,0,4,4,4,11,3,9,0,0,2,2,6,3,7,10,10,0,4,5,9,7,11,2,6,1,1,11,11,3,5,5,6,6,0,0,8,0,0,9,9,11,8,3,0,0,11,8,0,3,7,10,10,4,0,11,11,6,11,7,2,1,1,9,0,2,0,0,4,1,1,11,7,7
,11,0,5,9,4,11,11,3,10,10,2,8,0,0,7,11,2,6,5,5,6,6,10,10,3,11,11,8,0,0,0,1,1,0,2,0,7,11,10,10,11,11,3,5,5,6,6,8,0,0,9,9,3,0,0,11,8,11,8,7,10,10,0,4,4,4,0,5,5,11,11,6,11,7,2,1,1,9,0,11
,9,2,0,11,9,2,0,11,3,8,0,11,3,5,5,6,6,8,0,0,11,9,2,0,11,3,8,0,0,11,9,3,1,1,8,3,0,0,3,11,4,0,11,9,0,2,11,0,3,7,4,1,4,0,6,11,6,0,4,11,11,3,8,0,0,11,9,2,0,0,1,1,11,3,8,0,0,0,2,11
,1,3,11,11,7,1,1,5,8,2,0,11,0,3,6,11,7,10,10,10,10,0,11,11,3,6,0,8,0,0,11,9,2,0,3,0,11,8,5,1,10,6,8,3,11,3,8,0,11,3,8,0,0,8,5,0,4,1,1,9,7,10,10,2,11,7,4,0,11,11,0,0,6,11,7,2,0,2,0,7
,10,10,5,9,7,11,6,6,11,11,3,5,5,8,0,0,0,0,8,5,2,2,3,0,0,7,10,10,3,11,7,4,0,11,11,2,6,11,4,-1,1,1,9,0,2,0,2,0,0,3,7,4,8,5,9,7,11,6,6,11,11,3,6,1,5,5,10,10,8,0,0,9,9,7,9,2,2,2,11,8
,6,3,11,8,3,0,4,3,0,5,5,1,1,11,11,0,0,6,6,10,10,0,2,0,7,11,11,3,8,0,10,10,11,11,0,11,9,3,1,1,7,11,8,0,0,11,8,2,11,4,0,11,9,2,0,11,9,11,8,5,10,7,6,3,4,1,8,0,11,3,0,11,9,11,8,5,10,7,6,3
,4,1,11,8,9,9,5,2,4,4,7,11,0,2,6,4,0,11,6,3,10,11,0,11,0,0,2,0,11,9,4,1,10,7,7,3,8,4,0,5,11,11,6,0,0,11,0,2,0,11,8,0,6,3,11,8,9,5,10,6,5,11,4,11,0,4,11,11,7,0,0,10,10,1,1,0,10,10,11,11
,5,-1,-3,-3,-2,-2,4,-3,9,0,0,2,0,11,9,8,0,11,3,0,9,11,11,-3,-3,3,-2,-2,10,10,11,4,8,-1,0,11,10,8,6,6,8,8,6,8,6,10,7,10,7,0,-3,-3,0,10,10,11,11,0,6,8,6,8,8,0,0,0,4,4,7,7,3,1,4,4,0,1,1,0,11,9
,2,0,8,8,1,1,0,0,0,4,4,8,3,7,7,8,0,11,1,0,8,6,0,2,6,8,8,2,0,0,5,2,4,8,1,1,7,7,0,11,9,8,6,0,0,7,7,3,0,8,4,4,8,5,1,1,11,3,8,0,0,2,0,0,2,0,4,8,4,4,7,7,1,1,8,8,4,5,2,0
,2,0,10,10,3,7,11,11,7,7,11,7,8,8,8,0,0,-1,-3,8,8,4,0,0,7,7,1,-2,-2,3,8,4,-3,-3,5,1,1,8,3,8,-1,0,2,0,0,8,8,4,11,9,2,0,3,7,7,11,3,8,0,0,10,10,11,11,2,0,8,3,8,0,0,10,10,11,11,-3,-3,-2,-2,2
,8,3,8,-1,0,2,0,11,9,0,2,8,0,4,4,6,1,1,8,11,3,8,0,0,11,9,2,0,11,3,8,0,0,2,0,2,0,2,0,5,8,5,8,4,8,4,8,3,7,7,7,3,8,3,8,0,8,0,8,0,0,2,0,0,8,8,4,2,0,3,7,7,8,3,8,0,0,6,3,8
,8,0,0,5,2,0,4,8,4,0,7,1,1,7,7,0,8,8,1,1,0,0,4,-1,-3,8,5,4,0,3,7,7,8,0,5,-3,0,8,6,-1,-3,2,0,8,8,5,2,0,4,8,8,4,-2,7,7,1,1,8,0,6,-3,0,2,0,5,8,4,8,7,7,8,3,8,0,0,8,6,2,0,6
,8,8,4,2,0,0,4,0,3,5,8,6,1,1,2,7,7,0,2,0,0,0,8,10,7,1,1,7,7,8,8,9,3,0,8,5,0,8,5,0,0,8,4,1,1,4,0,8,0,0,8,6,1,2,0,5,8,1,4,8,7,4,0,8,0,8,6,1,1,7,5,2,0,5,8,3,0,8,7,4
,0,8,1,4,8,0,8,4,1,7,0,0,3,7,8,5,1,0,3,7,8,5,1,0,8,0,8,0,8,6,1,5,8,7,4,0,3,0,-3,-3,8,2,-2,-2,8,4,-3,2,0,7,7,0,0,8,8,1,1,0,11,9,6,10,10,7,3,1,-3,-3,5,0,-2,-2,5,5,8,11,4,8,0,11
,-3,11,-3,0,6,4,7,5,-3,-1,3,8,10,10,4,2,11,11,4,-2,-2,1,-3,0,0,4,6,4,6,4,4,6,6,5,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,10,11,11,0,11,11,10,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,7
,8,8,-1,-3,5,0,3,-3,0,11,10,4,8,6,2,0,0,6,8,4,2,0,3,-1,-3,8,5,2,1,1,7,7,0,9,11,11,9,11,6,6,2,0,0,3,0,0,5,5,0,10,10,1,1,1,9,1,0,9,1,9,1,9,1,9,1,2,2,3,3,7,7,8,8,0,11,9,2,0,7,10
,11,8,4,11,8,5,1,9,4,11,4,2,2,4,4,5,5,1,1,10,0,0,2,-3,11,6,2,-3,11,6,0,11,9,9,11,11,7,6,4,1,-1,-1,7,4,3,0,0,-3,0,-3,2,2,-3,-3,2,8,3,9,3,5,-1,10,10,3,-2,-2,0,10,10,11,11,10,10,11,11,0,4,3,3,7
,8,8,3,2,9,8,1,1,10,10,1,1,10,10,3,2,9,8,5,3,6,8,7,4,0,0,11,11,7,4,7,4,0,10,8,8,6,6,11,11,9,6,6,9,9,0,3,1,1,3,7,4,7,5,2,4,7,5,1,5,1,7,0,4,8,8,8,4,7,7,0,3,3,4,4,0,3,2,9,8
,1,1,10,10,2,3,5,7,6,1,1,8,8,10,10,3,2,9,8,7,4,0,0,11,11,5,5,7,4,0,13,12,0,10,8,7,7,11,11,10,8,0,10,3,10,3,0,0,1,1,6,6,7,7,0,10,11,11,6,9,11,8,10,6,6,0,7,6,10,10,6,8,9,7,11,11,11,6,0,11
,11,10,10,0,3,0,0,0,8,8,3,2,-3,8,1,1,1,8,-3,0,7,7,8,8,9,9,6,11,5,10,10,5,11,11,11,-3,11,-3,11,-3,11,-3,0,4,4,5,5,0,-2,-1,-1,-3,-3,0,6,8,11,7,9,10,10,11,6,0,10,8,11,11,7,6,6,10,9,7,6,9,8,11,0,7
,5,1,7,5,1,4,6,3,1,4,3,7,1,7,3,0,9,11,2,0,6,8,11,7,9,0,2,10,10,5,1,1,5,0,3,8,11,6,0,4,5,5,9,11,6,8,11,7,9,0,2,0,3,5,2,10,10,4,0,0,10,6,3,8,0,7,6,10,10,9,11,2,0,0,2,6,8,9,7,11
,11,5,1,1,5,0,3,8,11,6,0,7,7,8,8,-1,-3,-3,1,0,-2,-2,-3,0,0,5,-1,5,0,3,7,11,11,8,4,1,13,13,14,14,2,0,0,3,3,9,6,0,4,4,4,11,3,9,0,0,14,14,13,13,3,7,11,11,8,4,1,2,0,0,3,3,9,6,0,4,4,4,11,3
,9,0,0,13,14,14,13,13,3,7,11,11,8,4,1,2,0,0,3,3,9,6,0,4,4,4,11,3,9,0,0,13,14,13,14,14,13,3,7,11,11,8,4,1,2,0,0,3,3,9,6,0,4,4,4,11,3,9,0,0,13,13,14,14,13,13,14,14,3,7,11,11,8,4,1,2,0,0,3,3
,9,6,0,4,4,4,11,3,9,0,0,3,13,13,8,4,1,0,2,6,9,12,0,3,3,7,11,0,4,4,4,9,0,0,2,0,7,10,10,3,6,11,1,4,4,7,11,0,4,8,3,6,0,5,5,6,6,0,0,1,1,3,3,11,8,0,11,11,0,9,9,-3,-3,11,8,3,0,0,11,8
,2,-1,7,10,10,-1,3,-2,2,7,11,11,6,11,1,1,9,0,13,13,14,14,7,11,2,6,5,5,6,6,10,10,11,11,3,8,0,0,0,1,1,0,14,14,13,13,7,11,2,6,5,5,6,6,10,10,11,11,3,8,0,0,0,1,1,0,13,14,14,13,13,7,11,2,6,5,5,6,6,10
,10,11,11,3,8,0,0,0,1,1,0,13,13,14,14,13,13,14,14,7,11,2,6,5,5,6,6,10,10,11,11,3,8,0,0,0,1,1,0,11,9,13,13,14,14,2,0,11,3,8,0,0,11,9,14,14,13,13,2,0,11,3,8,0,0,13,14,14,13,13,11,9,2,0,11,3,8,0,0,13
,13,14,14,13,13,14,14,11,9,2,0,11,3,8,0,0,4,1,1,3,0,0,11,7,0,5,11,6,6,9,4,11,11,3,10,10,2,9,0,0,13,14,13,14,14,13,11,9,2,0,3,0,11,8,5,1,10,6,8,3,11,3,8,0,11,3,8,0,0,13,13,14,14,8,5,0,4,1,1,9
,7,10,10,2,11,7,4,0,11,11,0,0,6,11,7,2,0,14,14,13,13,8,5,0,4,1,1,9,7,10,10,2,11,7,4,0,11,11,0,0,6,11,7,2,0,13,14,14,13,13,8,5,0,4,1,1,9,7,10,10,2,11,7,4,0,11,11,0,0,6,11,7,2,0,13,14,13,14,14,13
,8,5,0,4,1,1,9,7,10,10,2,11,7,4,0,11,11,0,0,6,11,7,2,0,13,13,14,14,13,13,14,14,8,5,0,4,1,1,9,7,10,10,2,11,7,4,0,11,11,0,0,6,11,7,2,0,2,7,3,8,7,2,8,3,0,4,1,1,7,10,10,0,4,12,4,0,11,11,4,0
,0,5,6,11,10,2,9,1,7,-1,0,11,0,11,0,11,9,3,1,1,7,13,13,14,14,11,8,0,0,11,8,2,11,4,0,11,9,3,1,1,7,14,14,13,13,11,8,0,0,11,8,2,11,4,0,13,14,14,13,13,11,9,3,1,1,7,11,8,0,0,11,8,2,11,4,0,13,13,14,14
,13,13,14,14,11,9,3,1,1,7,11,8,0,0,11,8,2,11,4,0,14,14,13,13,2,0,11,8,0,6,3,11,8,9,5,10,6,5,11,4,11,0,0,2,2,4,7,7,2,6,11,7,0,8,8,3,3,11,2,0,2,0,0,5,8,8,0,2,0,5,2,3,6,9,8,11,7,7,4,11
,11,7,1,1,10,10,3,0,6,8,6,8,8,0,10,10,11,11,0,0,4,4,7,7,3,1,4,4,0,1,1,0,6,8,6,8,8,0,11,11,10,10,0,0,4,4,7,7,3,1,4,4,0,1,1,0,10,11,11,10,10,6,8,6,8,8,0,0,0,4,4,7,7,3,1,4,4,0,1,1
,0,10,11,10,11,11,10,6,8,6,8,8,0,0,0,4,4,7,7,3,1,4,4,0,1,1,0,10,10,11,11,10,10,11,11,6,8,6,8,8,0,0,0,4,4,7,7,3,1,4,4,0,1,1,0,6,8,6,8,8,0,12,10,10,12,12,0,0,4,4,7,7,3,1,4,4,0,1,1,0
,2,0,0,2,0,4,8,6,8,6,8,3,1,1,0,4,4,7,7,8,8,4,0,4,0,4,1,1,7,8,2,0,8,6,6,8,8,-3,-3,-1,2,-1,2,0,0,5,2,-2,3,-1,4,8,1,1,7,7,0,2,0,0,2,0,4,8,10,10,11,11,4,4,7,7,1,1,8,8,4,5,2,0
,2,0,0,2,0,4,8,11,11,10,10,4,4,7,7,1,1,8,8,4,5,2,0,10,11,11,10,10,2,0,0,2,0,4,8,4,4,7,7,1,1,8,8,4,5,2,0,10,10,11,11,10,10,11,11,2,0,0,2,0,4,8,4,4,7,7,1,1,8,8,4,5,2,0,10,10,2,0,11,11
,8,3,8,0,0,11,11,10,10,2,0,8,3,8,0,0,10,11,11,10,10,2,0,8,3,8,0,0,10,10,11,11,10,10,11,11,2,0,8,3,8,0,0,3,3,8,5,5,8,8,5,11,11,10,10,0,0,5,2,0,4,8,4,0,11,1,1,7,7,0,10,11,10,11,11,10,2,0,0,8
,8,4,2,0,3,7,7,8,3,8,0,0,10,10,11,11,6,3,8,8,0,0,5,2,0,4,8,4,0,7,1,1,7,7,0,11,11,10,10,6,3,8,8,0,0,5,2,0,4,8,4,0,7,1,1,7,7,0,10,11,11,10,10,6,3,8,8,0,0,5,2,0,4,8,4,0,7,1,1,7
,7,0,10,11,10,11,11,10,6,3,8,8,0,0,5,2,0,4,8,4,0,7,1,1,7,7,0,10,10,11,11,10,10,11,11,6,3,8,8,0,0,5,2,0,4,8,4,0,7,1,1,7,7,0,2,2,3,3,8,8,9,9,5,5,6,6,0,0,0,8,8,0,4,4,8,9,3,7,1,1
,1,7,7,5,-1,0,8,0,8,0,10,10,11,11,8,5,0,8,5,0,0,8,4,1,1,4,0,8,0,0,11,11,10,10,8,5,0,8,5,0,0,8,4,1,1,4,0,8,0,0,10,11,11,10,10,8,5,0,8,5,0,0,8,4,1,1,4,0,8,0,0,10,10,11,11,10,10,11,11,8
,5,0,8,5,0,0,8,4,1,1,4,0,8,0,0,8,6,1,11,11,10,10,5,8,7,4,0,3,0,-3,-3,8,2,-2,-2,8,4,-3,2,0,11,9,8,8,1,1,0,0,0,4,4,8,3,7,7,2,-3,11,1,8,-3,0,10,10,11,11,10,10,11,11,8,6,1,5,8,7,4,0,3,0
,-3,-3,8,2,-2,-2,8,4,-3,2,0));
begin
   Helv_BIFont:= the_Helv_BIFont'access;
end Graph.F.Helv_BI;
