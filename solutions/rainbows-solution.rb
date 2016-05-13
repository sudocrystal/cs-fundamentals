require 'rainbow'
require 'colorize'

rainbow = [
  { red: {r: 255, g: 0, b: 0}},
  { orange: {r: 255, g: 127, b: 0}},
  { yellow: {r: 255, g: 255, b: 0}},
  { green: {r: 0, g: 255, b: 0}},
  { blue: {r: 0, g: 0, b: 255}},
  { indigo: {r: 75, g: 0, b: 130}},
  { violet: {r: 143, g: 0, b: 255}},
]

#
# def mix_colors(color1,color2)
#   mixed_color = {}
#   color1.each do |beam|
#     mixed_color[beam] = color1[beam] + color2[beam]
#   end
#   return mixed_color
# end

def colorize_text(text,rgb)
  puts Rainbow(text).color(rgb[:r],rgb[:g],rgb[:b])
end

def print_rainbow(rainbow)
  rainbow.each do |color|
    colorize_text(color.first[0].to_s,color.first[1])
  end
end

print_rainbow(rainbow)
