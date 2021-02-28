# ***CMUBOMB***

We are given file. By giving permission to it and running the program we understand that we have defuse a bomb which has 6 steps to defuse the bomb.

## *PHASE_1*

By checking strings of the file we can defuse the phase_1. In strings we will find few meaningful sentences.
If we try them one will be correct for the program ```Public speaking is very easy.```

## *PHASE_2*

By using gdb we can crack phase_2. First we use `disas phase_2`.

By looking at the code we find scanf by keeping breakpoint at the scanf statement and running the we can find ``%d %d %d %d %d %d``.

By running the program multiple times we can find values have to inputted by seeing the values in eax register.

```1 2 6 24 120 720```

## *PHASE_3*

By looking at code of the phase_3 using `disas phase_3`.

By keeping a breakpoint at scanf function we can find ``%d %c %d`` first and last are integers the middle input is a character.

The program says the first input must be less than or equal to 7 (<=7).

For different values from 0-7 the other 2 inputs will vary accordingly.
```
0 q 777
1 b 214
2 b 755
3 k 251
4 o 160
5 t 458
6 v 780
7 b 524
```
![re](https://user-images.githubusercontent.com/73250884/109410932-747f9000-79c4-11eb-99de-ec57fc5d0341.png)

```
0x71 in decimal 113 ascii value of 113 is q.
0x309 in decimal is 777.
```

Phase_3 can be defused by all these pairs of values.

## *PHASE_4*
