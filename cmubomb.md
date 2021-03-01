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

By looking at the code of phase_4 using ```disas phase_4```.

By keeping a breakpoint at scanf function we can find ``%d``, therefore input is a number.

We can see that compare is comparing the hex value of 37 which is 55 in decimal.So we have to input that the program turns into 55 and phase_4 gets defused.

The program has function defined,which is recursive. So every recursive function will have a base condition and a recursive condition.

By using ``disas func4`` the useful parts that we find are

![image](https://user-images.githubusercontent.com/73250884/109544071-1ef2d280-7aed-11eb-9c85-7d08870ad168.png)

![image](https://user-images.githubusercontent.com/73250884/109544527-adffea80-7aed-11eb-8dd5-396c9917e892.png)
 
We can uderstand it is a fibonacci series, for 55 fibonacci is 10,Since the 2nd and 3rd fibonacci number are same.

So the number above the number = 2 we have to subtract 1. Therefore 10-1=9. ``9`` defuses the phase_4.
