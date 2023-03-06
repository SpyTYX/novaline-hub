# Welcome to Agro Documentation

This documentation will go through these:

- Syntax
- Agro Definitions
- Code Examples
- Benefits of Agro

Let's start!

## Syntax

Agro's Syntax is similar to The C Family like C, C# or C++ (mainly C#) which makes it so if you know The C Family you should be able to work better with Agro.
Let's start with the basics and slowly go to the harder parts of Agro Syntax.

To start the Program you will need to include the following code below in your code ALWAYS, otherwise it wont work at all.

```cpp
agro.Start*{
    %code goes here
}
```

The S in "Start" in the code does not matter, you can use (start) or (Start)

Let's go to Codespaces, also known as Workspaces. Codespaces are a group of code inside something. Think about that as multiple shoes inside a box.

To make a codespace we will use this code.

```cpp
agro.Start*{
    static void put.Agro():

    //
}
```

The "void" can be other stuff that changes every single property inside the code. These are:

- Void - Includes variables only for that codespace, prints, etc. It's the main codespace of Agro.
- Private - Code that can not be ran instantly by the program and requires an input in order to run, these inputs can be put on Public or Void.
- Public - Code that helps Void and Private to function.
- Storage - Stores Variables, Functions, Data, etc.

Printing in Agro is simple, it is the same as Lua/Python and functions like one. However there is another method which is called "Multi-Line" Printing.

```cpp
agro.Start*{
    static void put.Agro(*q, *pr):
        print('This is the basic method of printing in Agro.')
    //
}
```

The code above is a basic print in Agro, it is same as Lua/Python

```cpp
agro.Start*{
    static void put.Agro(*q, *pr):
        printml(1*'This is a multi-line'--2*'print in Agro.')
    //
}
```

The code above is a multi-line print in Agro, it is very similar to Lua/Python

Let's go to importing APIs in Agro, to do this we will need to use these lines of codes

```cpp
agro.Start*{
    static void put.Agro(*imp):
        importAPI('APIName',ID,TYPE)
    //
}
```

Example of Imports

```cpp
agro.Start*{
    static void put.Agro(*imp):
        importAPI('DOTNET Microsoft',45698221,Application)
    //
}
```

The next thing we will talk about is variables. Variables are values, strings, bools, etc that you have set in a variable.

EXAMPLE OF VARIABLES

```cpp
agro.Start*{
    static void put.Agro(*var):
        int number = 1 *% Integers that hold numbers and values inside them
        string text = "Hello world!" *% Strings that hold texts inside them
        bool yes = true *% Bools that hold true/false/nil inside them
    //
}
```

The variables above will only work in the current codespace which is "static void"

If you want to have global variables where you can access them anywhere you can use "static storage"

```cpp
agro.Start*{
    static storage put.Agro(*store, *var):
        int number = 1
        string text = "Hello world!"
        bool yes = true
    //
}
```

The code above will work in any codespace available for that time.

The next is functions which are a set of code you hold that can be ran by the program.

EXAMPLE OF FUNCTIONS

```cpp
agro.Start*{
    static void put.Agro(*func, *q, *pr, *var):
        int number = 0
        func(*main or *require, *func.name:"agroTest")
            for nil(
                number = +1
                if number == 1d.
                    agro.End(*auto, *confirm)
                //
            )//
        //
        agroTest(confirm = true, auto = true, main)
    //
}
```

As with variables these will only apply to the current codespace which is "static void" and if you want to make them available in every codespace you must use the "static storage"
