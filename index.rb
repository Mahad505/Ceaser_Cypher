puts "Hello World"
print "This is Mahad"
puts "Welcome to Xprolabs!"
puts "How's your first day going?"
puts "Hope it is going good \nThanks for being the part of this team"

puts "String functions"

s="   Mahad    "
puts s.upcase()
puts s.downcase()
puts s.strip()
puts s.length()
puts s.include? "had"
puts s.include? "Mahskhs"
puts s[3]
puts s[1,3]
puts s.index("h")


puts "Enter your name"
name=gets.chomp()
print "Hello "+name+
"!"

states={
  "LAH"=>"Lahore",
  "KAR"=>"Karachi",
  "ISL"=>"Islamabad"
}
puts "I am from "+states["LAH"]



def max(num1,num2,num3)
  if num1>=num2 and num1>=num3
    return num1
  elsif num2>=num1 and num2>=num3
    return num2
  else
    return num3
  end
end

puts max(100,300,500)



def pow(num,pow)
  result=1;
  pow.times do |index|
    result=result*num;

  end
  return result
end

puts pow(5,3)


=begin File.open("Basic Concepts of Ruby.txt","r") do |file|
  puts file.read()
end

File.open("Basic Concepts of Ruby.txt","r") do |file|
  for line in file.readlines()
    puts line
  end
  file.close()
end

File.open("Basic Concepts of Ruby.txt","a") do |file|
  file.write("\n\nFile.open(Basic Concepts of Ruby.txt,a+): To append in the existing file ")
end
=end

File.open("Basic Concepts of Ruby.txt","r+") do |file|
  for line in file.readlines()
    puts line
  end
  file.write("File.open(Basic Concepts of Ruby.txt,r+): To read write the file starting from the beginning ")
end


class Animal
  attr_accessor :specie, :noofLegs, :sound
end

an=Animal.new();
an.specie="mammals"
an.noofLegs="4"
an.sound="barking"

puts an.specie


=begin class Fruits
  attr_accessor :prompt, :answer
  def initialize(prompt,answer)
    @promp=prompt
    @answer=answer
  end
end

q1="Color of Apple is? \na)red\nb)blue\nc)yellow\n"
q2="Color of Bannana is? \na)red\nb)blue\nc)yellow\n"
q3="Color of Orange is? \na)red\nb)blue\nc)orange\n"
questions =[
  Fruits.new(q1,"a"),
  Fruits.new(q2,"b"),
  Fruits.new(q3,"c")
]

def test(questions)
  answer=""
  score =0
  for question in questions
    answer=gets.chomp()
    #
    puts question.prompt
    if  answer==question.answer
      score+=1

    end
  end
  puts ("You get ",score.to_s,"out of "+questions.length)
end

test(questions)
=end

require_relative "Tools.rb"

include Tools
Tools.saybye("Mahad")
