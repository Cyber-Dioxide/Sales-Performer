

require 'colorize'

puts "\n"

def blue(str)

  print "#{str}".colorize(:color => :blue)
end

def white(str)
  print "#{str}".colorize(:color => :light_white)

end

def green(str)

  print "#{str}".colorize(:color => :green)
end

file = File.open("Database.txt" , "a+")

green("\nEnter customer name: ")

name = gets

file.write("\n" + "-"*40)


file.write("\nName: #{name}")

blue("\nEnter number of items: ")

item = gets.to_i
items_name = []

for i in 1..item do
  white("\nName of item ")
  green(" #{i}: ")
  n = gets
  items_name.append(n.to_s)

end

totals = []

for name in items_name do
  white("\nEnter 1kg price of ")

  green("#{name}: ")

  price = gets.to_f

  white("\nEnter quantity in grams ")
  green("#{name}:")
  quantity = gets.to_f
  quantity /= 1000

  total = price * quantity
  totals.append(total)

  file.puts("\n #{quantity}kg of #{name} : #{total} ")

end

t = totals.sum

white("\nTotal: ")
blue(" #{t}")
file.write("\nTotal: #{t} ")

file.close













