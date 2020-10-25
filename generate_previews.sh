find -name "*.scad" -exec sh -c 'openscad -o "./previews/$(basename {} .scad).png" --render --autocenter --viewall {}' \;
