# ***CRACKME0x00a***

We are given a elf file. By giving it permission and running it we can see that code is recurising.

We can see there is scanf function by fixing breakpoint at scanf and running we can see ``%s`` which means input is a string.

Then by using gdb and use ```disas main```. We get the code.In that we see a ``strcmp`` function.

By fixing breakpoint at that strcmp and running the program we can see that the string to which it is being compared is ```g00dJ0B!```

# ***CRACKME0x00b***

We are given a file,by giving it permission adn running it we can see that code is recurising.

We can see there is scanf function by seeting breakpoint at that place and running we can see ``%ls`` which says character string.

Then if we objdump the file and check we can find the key, which is ```w0wgreat```.

# ***CRACKE0x01***

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
