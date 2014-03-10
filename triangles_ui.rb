require './lib/triangles'

@list = []

def main_menu
  puts "Press 't' to determine the type of a triangle."
  puts "Press 'l' to see all of your triangles or."
  puts "Press 'x' to exit the program."
  main_choice = gets.chomp
  if main_choice == 't'
    triangle
  elsif main_choice == 'l'
    list_triangles
  elsif main_choice == 'x'
    puts "Goodbye!"
  end
end

def triangle
  puts "Determine your Triangle Type"
  puts "Enter length of Side A"
  side_a = gets.chomp.to_i
  puts "Enter length of Side B"
  side_b = gets.chomp.to_i
  puts "Enter length of Side C"
  side_c = gets.chomp.to_i
  x = Triangle.new(side_a, side_b, side_c)
  puts x.triangle_type
  @list << x.triangle_type + " #{side_a},#{side_b},#{side_c}"
  puts "Your triangle has been added to the list"
  main_menu
end

def list_triangles
  puts "Here are all your triangles"
  puts @list
  # @list.each do |l|
  #   puts l.type
  # end
  main_menu
end

main_menu
