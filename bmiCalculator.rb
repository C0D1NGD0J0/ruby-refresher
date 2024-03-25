puts "Body Mass Index (BMI) Categories"
puts "- Severe thinness < 16"
puts "- Moderate thinness 16 - 17"
puts "- Mild thinness 17 - 18.5"
puts "- Normal 18.6 - 25"
puts "- Overweight 26 - 30"
puts "- Obese Class I 31 - 35"
puts "- Obese Class II 36 - 40"
puts "- Obese Class III > 40"
puts " "

puts "Body Mass Index Calculator"
print "Height (cm): "
height = gets.chomp.to_f
print "Weight (kg): "
weight = gets.chomp.to_f
bmi = weight / (height / 100) ** 2
puts "BMI: #{bmi}"

case bmi
when 0...16
  puts "Severely thin."
when 16...17
  puts "Moderately thin."
when 17...18.5
  puts "Mildly thin."
when 18.5...25
  puts "Normal weight class."
when 25...30
  puts "You are overweight."
when 30...35
  puts "You are obese, but don't worry yet.."
when 35...40
  puts "You are now obese, start worrying.."
else
  puts "You are really really obese, you need to worry.."
end
