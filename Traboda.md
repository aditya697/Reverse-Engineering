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
