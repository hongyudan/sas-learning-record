DATA example3_3;
INPUT group $ grade $;
CARDS;
������ ��Ч
������ ��Ч
������ ��Ч
������ Ȭ��
������ ��Ч
������ ��Ч
������ Ȭ��
������ ��Ч
������ ��Ч
������ ��Ч
������ Ȭ��
������ Ȭ��
������ Ȭ��
������ Ȭ��
������ ��Ч
������ Ȭ��
������ ��Ч
������ Ȭ��
������ Ȭ��
������ Ȭ��
������ Ȭ��
������ Ȭ��
������ ��Ч
������ ��Ч
������ ��Ч
������ ��Ч
������ ��Ч
������ ��Ч
������ ��Ч
������ Ȭ��
������ ��Ч
������ Ȭ��
������ ��Ч
������ ��Ч
������ ��Ч
������ Ȭ��
������ ��Ч
������ Ȭ��
������ Ȭ��
������ ��Ч
������ ��Ч
������ ��Ч
������ ��Ч
������ Ȭ��
������ ��Ч
������ ��Ч
������ ��Ч
������ ��Ч
;
PROC FREQ;
TABLES group * grade;
RUN;
proc gchart data = example3_3;
pie3d grade/ midpoints = "Ȭ��" "��Ч" "��Ч" "��Ч" clockwise explode = "��Ч" slice = inside percent = inside cfill = white;
run;
proc gchart data = example3_3;
donut grade/ subgroup = group  midpoints = "Ȭ��" "��Ч" "��Ч" "��Ч" clockwise slice = inside percent = inside cfill = grey;
run;
