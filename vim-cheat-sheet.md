## vimdiff commands

    ]c :        - next difference
    [c :        - previous difference
    do          - diff obtain
    dp          - diff put
    zo          - open folded text
    zc          - close folded text
    :diffupdate - re-scan the files for differences
    :diffthis

 [Adding a ssh automatic to the server](http://www.thegeekstuff.com/2008/11/3-steps-to-perform-ssh-login-without-password-using-ssh-keygen-ssh-copy-id)
 
## vim help
### markers
    mk - mark current position
    'k - move to marker k
    d'k     - delete from current position to mark k
    'a-z    - same file
    'A-Z    - between files

### searching
    /pattern       - search forward for pattern
    ?pattern       - search backward
    n              - repeat forward search
    N              - repeat backward
    :set ignorecase - case insensitive
    :set smartcase  - use case if any caps used 
    :set incsearch  - show match as search proceeds
    :set hlsearch   - search highlighting
    *               - search for word currently under cursor
    [I              - show lines with matching word under cursor
    :%s/foo/bar/gc  - search and replace with confirmation
    
### moving 
    l   - move right
    h   - move left
    j   - move down
    k   - move up
    w   - beginning of next word
    W   - no punctuation
    e   - end of word
    E   - no punctuation
    b   - beginning of word
    B   - no punctuation
    $   - end of line
    0   - beginning of line
    ^   - first non white in beginning
    g_  - first non white in end
    -   - move up first non white
    +   - move down first non white
    ()   - start of sentence
    {}   - paragraph
    H   - top of screen
    L   - bottom of screen
    M   - midscreen
    gg  - move to the beginning of file
    G   - move to the end of file
    i   - before cursor
    a   - after cursor
    I   - begin of line
    A   - end of line
    o   - insert after a line
    O   - insert before a line
    J   - join a line with the one below
    u   - undo a change
    U   - undo a entire line
    ^r  - redo
    s   - replace a char
    S   - replace a line
    y   - yank
    yy  - yank a line
    Y   - yank entire line 
    ^f  - page down
    ^b  - page up

    
### text selection
    V       - selects entire lines 
    v       - selects range of text
    ctrl-v  - selects columns
    gv      - reselect block
    
### indenting
    :set tabstop 8     - tabs are at proper location
    :set expandtab     - don't use actual tab character (ctrl-v)
    :set shiftwidth=4  - indenting is 4 spaces
    :set autoindent    - turns it on
    :set smartindent   - does the right thing (mostly) in programs
    :set cindent       - stricter rules for C programs    
    To stop indenting when pasting with the mouse, add this to your .vimrc:
    :set pastetoggle=<f5>  
    :%s/\s\+$//e - remove trailing space at end of line
### reformatting
    V=  - select text, then reformat with =
    =   - will correct alignment of code
    ==  - one line; 
    gq  - reformat paragraph

### multiple windows
    :e filename      - edit another file
    :split filename  - split window and load another file
    ctrl-w up arrow  - move cursor up a window
    ctrl-w ctrl-w    - move cursor to another window (cycle)
    ctrl-w_          - maximize current window
    ctrl-w=          - make all equal size
    10 ctrl-w+       - increase window size by 10 lines
    :vsplit file     - vertical split
    :sview file      - same as split, but readonly
    :hide            - close current window
    :only            - keep only this window open
    :ls              - show current buffers
    :b 2             - open buffer #2 in this window    

### makefile
    :map <f9> :make    - map the F9 key to run make
    :set makeprg       - change what :make does    
    :make will compile if you are using a Makefile. Use these to examine the compile errors:
    :copen  - open a mini-window with list of errors
            - hit enter on an error to jump to line 
    :cclose   - closes the mini-window
    :cw       - toggles the mini-window (if errors exist)    

## Screen commands
    screen -S <name> - start a new screen session with session name
    screen -ls       - list running sessions/screens
    screen -x        - attach to a running session
    screen -r <name> - reattach to session with name
    screen -d <name> - detach from a session
    screen -dRR      - (Attaches to a screen session. If the session is attached elsewhere, detaches that other display. If no session                     exists, creates one. If multiple sessions exist, uses the first one.)
    C-a d - detach
    C-a D D - detach and logout (quick exit)
    C-a \ - Exit all of the programs in screen.
    C-a C-\ - force-exit screen
    exit - getting out of the screen session
    
### Window Management
    C-a c - create new window
    C-a C-a - change to last-visited active window	
    C-a <number> (only for windows 0 to 9) - change to window by number
    C-a ' <number or title> - change to window by number or name
    C-a n - change to next window in list
    C-a p - change to previous window in list
    C-a " (allows you to select a window to change to) 
    C-a w - show window bar
    C-a k - kill current window
    C-a \ - kill all windows
    C-a A - rename current window

### Split Screen
    C-a S - split display horizontally
    C-a | or C-a V - split display vertically
    C-a tab - jump to next display region
    C-a X - remove current region
    C-a Q - remove all regions but the current one

### vim plugins
    pathogen or Vundle - https://github.com/gmarik/vundle.git 
    Nerdtree - http://vimawesome.com/plugin/nerdtree-red
    minibufexplorer
    taglist  
    ctrlp - http://vimawesome.com/plugin/ctrlp-vim-everything-has-changed.html
    tabular - https://github.com/godlygeek/tabular
    Youcompleteme - http://www.alexeyshmalko.com/2014/youcompleteme-ultimate-autocomplete-plugin-for-vim/
    surround - http://www.catonmat.net/blog/vim-plugins-surround-vim/
    repeat - http://www.catonmat.net/blog/vim-plugins-repeat-vim/
    matchit- http://www.catonmat.net/blog/vim-plugins-matchit-vim/
    vim-snippets - 
    
    tlib_vim - dependency for snipmate
    snipmate - https://github.com/garbas/vim-snipmate
    supertab -
### surround
    Normal mode
    -----------
    ds  - delete a surrounding
    cs  - change a surrounding
    ys  - add a surrounding
    yS  - add a surrounding and place the surrounded text on a new line + indent it
    yss - add a surrounding to the whole line
    ySs - add a surrounding to the whole line, place it on a new line + indent it
    ySS - same as ySs
    
    Visual mode
    -----------
    s   - in visual mode, add a surrounding
    S   - in visual mode, add a surrounding but place text on new line + indent it
    
    Insert mode
    -----------
    <CTRL-s> - in insert mode, add a surrounding
    <CTRL-s><CTRL-s> - in insert mode, add a new line + surrounding + indent
    <CTRL-g>s - same as <CTRL-s>
    <CTRL-g>S - same as <CTRL-s><CTRL-s>
    
## References
 [Vim Reference](https://www.cs.oberlin.edu/~kuperman/help/vim/home.html) 
 
 [Screen Reference](http://aperiodic.net/screen/quick_reference)
 
 [cygwin zsh](http://www.adhikary.net/post/cygwin-zsh-solarized-apt-cyg/)
 
 [zsh help](https://martin-thoma.com/working-terminal/)
 
 [markdown help](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
