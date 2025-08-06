function goldwarden --wraps='flatpak run --filesystem=home --command=goldwarden com.quexten.Goldwarden' --description 'alias goldwarden=flatpak run --filesystem=home --command=goldwarden com.quexten.Goldwarden'
  flatpak run --filesystem=home --command=goldwarden com.quexten.Goldwarden $argv
        
end
