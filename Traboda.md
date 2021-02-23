# ***WRATHS OF ROMANS***

We are given a ``.py`` file and an ```output = bpztugttsdbaphiiwthidgb``` with key 15.

By decoding the given output with the code we get the original message.

```
def encrypt_decrypt(text, n):
    result = ""
    for i in range(len(text)):
        char = text[i]
        if (char.isupper()):
            result += chr((ord(char) + n - 65) % 26 + 65)
        elif (char.islower()):
            result += chr((ord(char) + n - 97) % 26 + 97)
        else:
            result += char

    return result
a = int(input())
b = int(input())
str = input()
if b == 1:
    print(encrypt_decrypt(str, 26-a))
else:
    print(encrypt_decrypt(str, a))
```
Here,The first input is the key.
The second input is '1' for decryption '0' for encryption.
The third input is the string that we want to encrypt or decrypt.

As the flag format mentioned in the question.

```FLAG:-inctfj{makefreedomlastthestorm}```

# ***0xbeadbeef***

We are given a ``.asm`` file from that we should find which inputs will give the program the ouput as "correct".
Those inputs are the flag as mentioned in the format of the question.

From the code we can say that input2 must be fixed that is ``hex(input2) = 0x6f56df8d`` in hex because input2 is compared twice and once it goes to "not correct" if the input is greater than the hex(input2) value and the other time it jumps to "not correct" when less than the hex(input2) value. Therefore the input2 is equal to the hex(input2) value.

We can predict the input1 by looking at the ebx compare statement. It says if ebx is not equal to the given hex value(0xdeadbeef) then it jumps to "not correct". The value in ebx is the sum of input1 and input2. So by ```subtracting 0xdeadbeef from 0x6f56df8d``` we get input1.

```FLAG:-inctfj{1867964258,1867964301}```

# ***ONLY PRINTABLES***

We are given a file. First giving permission to it using ```chmod +x <filename>``` . It will ask for a key.

Then using radare2 ```r2 <filename>``` then ``aa`` for searching all flags.

Then by using ```pdf@sym.main``` we can find the key.

By giving the key we get the flag.

*```FLAG:-flag{YElOo_Th3r3_m4T3}```*

# ***SHUFFLE***

We are givena file. Give permission and run. If we enter the key get flag length is correct or wrong.

By using ```r2 <filename>``` We can find the length of the key by using ```x/s ``` then we can find it 36.

By seeing the code we can see flag which is shuffled. By putting them order we get the flag.

*```FLAG:-inctfj{s00_much_l00p1ng_1s_n0t_g00d}```*

# ***BE-STRONG***

We are given a file. Give permission and run. If we enter a letter or number the program outputs differently. For one letter it will give the flag.

We can find the flag that is ```g```.

*```FLAG:-inctfj{Its_a_3_D1g1t_Armstr0ng_numb3r}```*

# ***WHAT IS THIS?***

We are given a file. We are asked find what is architecture of the file. By using ```file <filename```.

We get ```ELF 64-bit LSB shared object, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 3.2.0, BuildID[sha1]=506e836cb60b0b6c506ebd9822312d75d1417b53, not stripped```

*```FLAG:-flag{x86-64}```*
