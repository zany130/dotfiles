function ls --wraps=lsd --wraps='eza -l -F auto --icons always --hyperlink -a -g -h -M -t modified --git -o' --description 'alias ls=eza -l -F auto --icons always --hyperlink -a -g -h -M -t modified --git -o'
  eza -l -F auto --icons always --hyperlink -a -g -h -M -t modified --git -o $argv
        
end
