
function! Todosort()
    let fname = expand( '%')
    let res_match = match( fname, '(todo)\.(txt|md|readme)') 
    if res_match == 0
        return
    en
    let todo_commands = {'-' : '005',  '*' : '004', '+' : '010' }
    let todo_keys = [ '-', '*', '+']
    let cmd_sufix = '_____'
    let cr_sub = '___AAARRGGGGHHHHH___'
    let fl = line('w0')
    let ll = line('w$')
    let srange = '%' "fl.','.ll
    for k in todo_keys
        let cmd = todo_commands[k].cmd_sufix
        silent! execute srange.'s/^'.k.'/'.cmd.'/'
    endfor
    "replace every \<CR\> with special char
    silent! execute srange.'s/\n /'.cr_sub.'/g'
    "sort lines
    silent! execute 'sort'
    silent! execute srange.'s/'.cr_sub.'/\r /g'
    for k in todo_keys
        let cmd = todo_commands[k].cmd_sufix
        silent! execute srange.'s/^'.cmd.'/'.k.'/'
    endfor
    echo 'Posortowana todo liste'
endfunction

map <F3> :call Todosort() <CR>

map <F5> :execute('s/^[-+*] /+ /') <CR>
map <F6> :execute('s/^[-+*] /- /') <CR>
map <F7> :execute('s/^[-+*] /* /') <CR>



inoremap <script> <silent>  -<TAB> <C-R>='- '.strftime('%Y-%m-%d %H:%M' ).' -'<CR> 
inoremap <script> <silent>  +<TAB> <C-R>='+ '.strftime('%Y-%m-%d %H:%M' ).' -'<CR> 
inoremap <script> <silent>  *<TAB> <C-R>='* '.strftime('%Y-%m-%d %H:%M' ).' -'<CR> 



autocmd BufNewFile,BufRead [Tt][Oo][Dd][Oo].[Tt][Xx][Tt] set filetype=justtodo
autocmd BufNewFile,BufRead .*[Tt][Oo][Dd][Oo].[Tt][Xx][Tt] set filetype=justtodo
autocmd BufNewFile,BufRead [Tt][Oo][Dd][Oo].*.[Tt][Xx][Tt] set filetypejusttodo




