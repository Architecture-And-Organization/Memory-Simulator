# generate answer keys
timeout 1 ../memsim -m 2e hello.in 2>&1 | head -n 1000 > hello.out
timeout 1 ../memsim -m0x30 test2.in 2>&1 | head -n 1000 > test2.out
timeout 1 ../memsim -m 30 test3.in 2>&1 | head -n 1000 > test3-30.out
timeout 1 ../memsim -m 200 test3.in 2>&1 | head -n 5000 > test3-200.out
timeout 1 ../memsim -m1010 test3.in 2>&1 | head -n 5000 > test3-1010.out
timeout 1 ../memsim -m0x100 testsx.in 2>&1 | head -n 5000 > testsx.out


# do a grade-run
timeout 1 ../memsim -m 2e hello.in 2>&1 | head -n 1000 > hello.run
diff hello.out hello.run

timeout 1 ../memsim -m0x30 test2.in 2>&1 | head -n 1000 > test2.run
diff test2.out test2.run

timeout 1 ../memsim -m 30 test3.in 2>&1 | head -n 1000 > test3-30.run
diff test3-30.out test3-30.run

timeout 1 ../memsim -m 200 test3.in 2>&1 | head -n 5000 > test3-200.run
diff test3-200.out test3-200.run

timeout 1 ../memsim -m1010 test3.in 2>&1 | head -n 5000 > test3-1010.run
diff test3-1010.out test3-1010.run 

timeout 1 ../memsim testsx.in 2>&1 | head -n 5000 > testsx.run
diff testsx.out testsx.run 
