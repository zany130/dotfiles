function securesign --wraps='sudo sbctl sign -s' --description 'alias securesign=sudo sbctl sign -s'
  sudo sbctl sign -s $argv
        
end
