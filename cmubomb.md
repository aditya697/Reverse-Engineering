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

## *PHASE_5*

By looking at the code of phase_5 using ```disas phase_5```.

By looking at the string_lenght function below it there is a cmp statemnt which is compared with 6 . So the lenght of the string is 6.

To the input we give AND operation is done with 0xF and which is compared to the string ```gaints```.

So some string is being modified by AND operation with 0xf to get `gaints`.

so we need the result of the AND operations 15,0,5,11,13,1.

AND Operaations results as ```a 1, b 2, c 3, d 4, e 5, f 6, g 7, h 8, i 9, j 10, k 11, l 12, m 13, n 14, o 15, p 0```

So the final string that we have input is ```opekma```.

## *PHASE_6*

By looking at the code of phase_4 using ```disas phase_4```.

By looking at read_six_numbers function the phase_6 akes in 6 integers as input.

![image](https://user-images.githubusercontent.com/73250884/111499446-f7486f00-8768-11eb-87ea-cfa4c274c2ff.png)

Here these numbers indicate node values, node numbers, pointer of next node.

By arrange the node values in decreasing order and placing that order as the input we can defuse the bomb.

![image](https://user-images.githubusercontent.com/73250884/111499799-527a6180-8769-11eb-8c36-180081787127.png)

From this the decreasing order is ```4 2 6 3 1 5```.

The last phase can be defused with ```4 2 6 3 1 5```.
