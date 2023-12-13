STEP1

gmake -f Makefile.run step1
rm -f zz.output.step1.txt
time find conf -name "router.unix.*" -print | xargs -P 1 -n 1 ./check.int.sh > zz.output.step1.txt || true
0.05user 0.02system 1:53.18elapsed 0%CPU (0avgtext+0avgdata 20704maxresident)k
0inputs+0outputs (0major+4617minor)pagefaults 0swaps
./compliance.sh zz.output.step1.txt
120000  field2_length    :  12
120000  field3_length    :  5
120000  field4_length    :  3
120000  nb_of_fields     :  5
1       number_of_lines  :  120000

STEP2

gmake -f Makefile.run step2
rm -f zz.output.step2.txt
time find conf -name "router.unix.*" -print | xargs -P 50 -n 50 ./check.int.sh > zz.output.step2.txt || true
0.08user 0.00system 0:01.03elapsed 8%CPU (0avgtext+0avgdata 20680maxresident)k
0inputs+0outputs (0major+4615minor)pagefaults 0swaps
./compliance.sh zz.output.step2.txt
59780   field2_length    :  13
60000   field2_length    :  18
220     field2_length    :  2
220     field3_length    :  10
220     field3_length    :  12
119560  field3_length    :  7
220     field4_length    :  0
220     field4_length    :  13
119560  field4_length    :  2
220     nb_of_fields     :  3
119560  nb_of_fields     :  5
220     nb_of_fields     :  7
1       number_of_lines  :  120000

STEP3

gmake -f Makefile.run step3
rm -f zz.output.step3.txt
time find conf -name "router.unix.*" -print | xargs -P 1 -n 1 ./check.flex > zz.output.step3.txt || true
0.07user 0.01system 0:34.71elapsed 0%CPU (0avgtext+0avgdata 20784maxresident)k
0inputs+0outputs (0major+4617minor)pagefaults 0swaps
./compliance.sh zz.output.step3.txt
120000  field2_length    :  12
120000  field3_length    :  5
120000  field4_length    :  3
120000  nb_of_fields     :  5
1       number_of_lines  :  120000

STEP4

gmake -f Makefile.run step4
rm -f zz.output.step4.txt
time find conf -name "router.unix.*" -print | xargs -P 50 -n 50 ./check.flex > zz.output.step4.txt || true
0.05user 0.02system 0:00.43elapsed 18%CPU (0avgtext+0avgdata 20684maxresident)k
0inputs+0outputs (0major+4617minor)pagefaults 0swaps
./compliance.sh zz.output.step4.txt
149     field2_length    :  0
119826  field2_length    :  12
19      field2_length    :  3
1       field2_length    :  4
3       field2_length    :  5
2       field2_length    :  6
149     field3_length    :  0
3       field3_length    :  12
19      field3_length    :  2
19      field3_length    :  21
3       field3_length    :  3
119807  field3_length    :  5
168     field4_length    :  0
19      field4_length    :  12
3       field4_length    :  20
119807  field4_length    :  3
3       field4_length    :  5
149     nb_of_fields     :  1
19      nb_of_fields     :  3
3       nb_of_fields     :  4
119658  nb_of_fields     :  5
3       nb_of_fields     :  6
19      nb_of_fields     :  7
149     nb_of_fields     :  9
1       number_of_lines  :  120000

STEP5

gmake -f Makefile.run step5
rm -f zz.output.step5.txt
rm -r tmp
mkdir tmp
time find conf -name "router.unix.*" -print | xargs -P 50 -n 50 ./check.race || true
0.05user 0.02system 0:00.44elapsed 18%CPU (0avgtext+0avgdata 20624maxresident)k
0inputs+0outputs (0major+4615minor)pagefaults 0swaps
cat tmp/* > zz.output.step5.txt
./compliance.sh zz.output.step5.txt
120000  field2_length    :  12
120000  field3_length    :  5
120000  field4_length    :  3
120000  nb_of_fields     :  5
1       number_of_lines  :  120000

