# ***CRACKME0x00a***

We are given a elf file. By giving it permission and running it we can see that code is recurising.

We can see there is scanf function by fixing breakpoint at scanf and running we can see ``%s`` which means input is a string.

Then by using gdb and use ```disas main```. We get the code.In that we see a ``strcmp`` function.

By fixing breakpoint at that strcmp and running the program we can see that the string to which it is being compared is ```g00dJ0B!```

# ***CRACKME0x00b***

We are given a file,by giving it permission adn running it we can see that code is recurising.

We can see there is scanf function by seeting breakpoint at that place and running we can see ``%ls`` which says character string.

Then if we objdump the file and check we can find the key, which is ```w0wgreat```.

# ***CRACKME0x01***

We are given a file,by giving it permission and running it we can see that we are asked an input.

By looking at code we can see a scanf function,by keeping breakpoint at that place if we run the program we can see ``%d`` which is an integer.

Then we can see a strcmp statement which is comparing our input with `0x149a` hex which is ``5274`` in decimal.

# ***CRACKME0x02***

We are given a file,by giving it permission and running it we can see that we are asked an input.

By looking at code we can see a scanf function,by keeping breakpoint at that place if we run the program we can see ``%d`` which is an integer.

Then we can see a strcmp statement after the imul statement by checking the way in the eax register which is ``0x52b24`` in hex and converting into decimal it is ```338724```.

# ***CRACKME0x03***

We are given a file,by giving it permission and running it we can see that we are asked an input.

By looking at code we can see a scanf function,by keeping breakpoint at that place if we run the program we can see ``%d`` which is an integer.

Then we can see a strcmp statement after the imul statement by checking the way in the eax register which is ``0x52b24`` in hex and converting into decimal it is ```338724```.

# ***CRACKME0x04***

We are given a file,by giving it permission and running it we can see that we are asked an input.

By looking at code we can see a scanf function,by keeping breakpoint at that place if we run the program we can see ``%s`` which is a string.

Then there is a there check function, by checking that function we can see sscanf which type casting ``%s to %d``.

Then values in sscanf are added and compared with 15. Soo the numbers entered should make sum of 15 for the input to be correct. ``Eg:- 663,12345``

# ***CRACKME0x05***

We are given a file,by giving it permission and running it we can see that we are asked an input.

By looking at code we can see a scanf function,by keeping breakpoint at that place if we run the program we can see ``%s`` which is a string.

Then there is a there check function, by checking that function we can see sscanf which type casting ``%s to %d``.

Then values in sscanf are added and compared with 16. Soo the numbers entered should make sum of 16 for the input to be correct.

The input should be ending with even numbers due to parallel function. ``Eg:- 88,556``

# ***CRACKME0x06***

We are given a file,by giving it permission and running it we can see that we are asked an input.

By looking at code we can see a scanf function,by keeping breakpoint at that place if we run the program we can see ``%s`` which is a string.

Then there is a there check function, by checking that function we can see sscanf which type casting ``%s to %d``.

Then values in sscanf are added and compared with 16. Soo the numbers entered should make sum of 16 for the input to be correct.

The input should be ending with even numbers due to parallel function.

Here there is extra function named dummy,So in all the above ones variable is LOL but here we should use ``LOL``.

So if we run the program using ``LOL= ./crackme0x06`` and give ``88,556....`` with last digits even.

# ***CRACKME0x07***

We are given a file,by giving it permission and running it we can see that we are asked an input.

Here file is stripped. So by using info files and the ```disas 0x08048400,0x08048784``` we can see the assembly code.

By looking at code we can see a scanf function,by keeping breakpoint at that place if we run the program we can see ``%s`` which is a string.

Then there is a there check function, by checking that function we can see sscanf which type casting ``%s to %d``.

Then values in sscanf are added and compared with 16. Soo the numbers entered should make sum of 16 for the input to be correct.

The input should be ending with even numbers due to parallel function.

Here there is extra function named dummy,So in all the above ones variable is LOL but here we should use ``LOL``.

So if we run the program using ``LOL= ./crackme0x06`` and give ``88,556....`` with last digits even.

# ***CRACKME0X08***

This is similar to crackme0x07 and it also says no symbol table is loaded.

I took info file again and found the address of .text section and disassembled that using the addresses

Here also dummy, parell were the same, but the function check had an extra function che which just prints Password Incorrect! and exits.

Here too we can export an environment variable with name LOL using ```export LOL="LOL"```

We can input ``88,556,...`` And we get password OK!.

# ***CRACKME0X09***

This is similar to crackme0x07 and it also says no symbol table is loaded.

I took info file again and found the address of .text section and disassembled that using the addresses

Here also dummy, parell were the same, but the function check had an extra function che which just prints Password Incorrect! and exits.

Here too we can export an environment variable with name LOL using ```export LOL="LOL"```

We can input ``88,556,...`` And we get password OK!.

