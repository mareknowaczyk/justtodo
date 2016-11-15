
syntax match TODO_done          '^+ .*' 
syntax match TODO_undone        '^- .*'
syntax match TODO_pending       '^* .*'

highlight default link TODO_done        Comment
highlight default link TODO_undone      Error
highlight default link TODO_pending     Todo


