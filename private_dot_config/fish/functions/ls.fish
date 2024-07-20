function ls --wraps=lsd --wraps='exa -l -F auto --icons always --hyperlink -a -g -h -M -t modified --git' --description 'alias ls=exa -l -F auto --icons always --hyperlink -a -g -h -M -t modified --git'
  exa -l -F auto --icons always --hyperlink -a -g -h -M -t modified --git $argv
        
end
