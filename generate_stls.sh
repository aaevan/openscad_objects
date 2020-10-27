find -name "*.scad" -exec sh -c 'openscad -o "./stls/$(basename {} .scad).stl" --render --autocenter --viewall {}' \;
