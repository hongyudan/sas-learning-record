DATA example3_3;
INPUT group $ grade $;
CARDS;
试验组 有效
试验组 有效
试验组 有效
试验组 痊愈
试验组 有效
试验组 有效
试验组 痊愈
试验组 有效
试验组 有效
试验组 无效
试验组 痊愈
试验组 痊愈
试验组 痊愈
试验组 痊愈
试验组 有效
试验组 痊愈
试验组 有效
试验组 痊愈
试验组 痊愈
试验组 痊愈
试验组 痊愈
试验组 痊愈
试验组 有效
试验组 有效
对照组 有效
对照组 有效
对照组 有效
对照组 有效
对照组 有效
对照组 痊愈
对照组 有效
对照组 痊愈
对照组 有效
对照组 有效
对照组 有效
对照组 痊愈
对照组 无效
对照组 痊愈
对照组 痊愈
对照组 有效
对照组 无效
对照组 无效
对照组 有效
对照组 痊愈
对照组 有效
对照组 有效
对照组 无效
对照组 有效
;
PROC FREQ;
TABLES group * grade;
RUN;
proc gchart data = example3_3;
pie3d grade/ midpoints = "痊愈" "显效" "有效" "无效" clockwise explode = "无效" slice = inside percent = inside cfill = white;
run;
proc gchart data = example3_3;
donut grade/ subgroup = group  midpoints = "痊愈" "显效" "有效" "无效" clockwise slice = inside percent = inside cfill = grey;
run;
