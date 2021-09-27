class Myapp
  def initialize(tv_programs)
    @tv_programs = ["News", "National Geographics", "Cartoon Network", "Movie", "Music"]
  end

  def age_restriction(age)
    @age = age
    case @age
    when 2..12
      return @tv_programs[2]
    when 13..19
      return @tv_programs[0, 2]
    when 20..200
      return @tv_programs[0, 5]
    else
      return "Error"
    end
  end

  def program(program_time)
    @program_time = program_time 

    case @program_time
    when 7...10
      return @tv_programs[0]
    when 10...13
      return @tv_programs[1]
    when 13...17
      return @tv_programs[0]
    when 17...20
      return @tv_programs[2]
    when 20...23
      return @tv_programs[0]
    when 23, 0, 1
      return @tv_programs[3]
    when 2...7
      return @tv_programs[4]
    end
  end
end

# show = Myapp.new("")
# print "Hey 👋 What's your age >> "
# print "The programs that you can enjoy: #{show.age_restriction(gets.chomp.to_i)}"
# puts ""
# puts "Ongoing Program: #{show.program((Time.now).hour)}"
