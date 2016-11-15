# justtodo

## todo plugin for VIM

This is very *untested* but **working** todo plugin for **Vim**.

## Features

- simplicity
- todo list support

## What's inside?

- hapiness of using todo list in vim :)
- highlightning of 3 kind of tasks:
  - `-` like todo task,
  - `+` like done task, 
  - `*` like pending task
- insert mode mappings
  - on `-` / `+` / `*` + `<TAB>`, new task line with current date time will be inserted
- other mode mappings
  - press `<F3>` to sort tasks by `<type>`,`<content>` `ASC` ( with multiline support ), 
  - press `<F5>` to change current task to `+`,
  - press `<F6>` to change current task to `-`,
  - press `<F7>` to change current task to `*`
- detect **justtodo** filetype with following ( case insensitive ) rules:
  - **.*todo.txt**, or
  - **todo.*.txt**, or simply ( last but not lost )
  - **todo.txt** .
  

## Installation

- using **Vundle**: add following line in `.vimrc` ( in **Vundle** section ):
  
  ```Plugin 'https://github.com/mareknowaczyk/justtodo.git'```

  then restart **Vim** and type

  ```:PluginUpdate justtodo```

- else, just clone this repo and copy all subfolders to `.vim` folder, then
  add in your `.vimrc` this line:

  ```so ~/.vim/ftdetect/justtodo.vim```  

## Requirements

- **Vim 7.3+**
- **Vundle** (for install purposes only )



