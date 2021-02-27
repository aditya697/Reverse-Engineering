# ***CMUBOMB***

We are given file. By giving permission to it and running the program we understand that we have defuse a bomb which has 6 steps to defuse the bomb.

## *PHASE_1*

By checking strings of the file we can defuse the phase_1. In strings we will find few meaningful sentences.
If we try them one will be correct for the program ```Public speaking is very easy.```

## *PHASE_2*

By using gdb we can crack phase_2. First we use `disas phase_2`.

By looking at the code we find scanf by keeping breakpoint at the scanf statement and running the we will the input for phase_2 is integers.

By running the program multiple times we can find values have to inputted by seeing the values in eax register.

```1 2 6 24 120 720```

#3 *PHASE_3*

