katz_deli = []
def line(line)
  if line.size == 0
    puts "The line is currently empty."
  else
    output = "The line is currently: "
    count = 0
    line.each do |person|
      count += 1
      output += "#{count}. #{person}"
      output += " " if count != line.size
    end
    puts output
    output
  end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli == []
    puts 'There is nobody waiting to be served!'
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end
