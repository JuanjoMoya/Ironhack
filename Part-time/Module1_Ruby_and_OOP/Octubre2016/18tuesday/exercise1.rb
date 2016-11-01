require 'pry'

class Ask_for_user
  attr_accessor :username
  def ask
    puts "Write an username"
    @username = gets.chomp
  end
end


class Ask_for_password
  attr_accessor :password
  def ask
    puts "Write an password"
    @password = gets.chomp
  end
end


class Validate_user
  def validate(username)
    if username == "Cristiano"
      true
    else
      false
      puts "The user is incorrect"
    end
  end
end


class Validate_password
  def validate(password)
    if password == "Ronaldo"
      true
    else
      false
      puts "
      The password is incorrect"
    end
  end
end




class Tool
  def initialize
    @askUser = Ask_for_user.new
    @askPassword = Ask_for_password.new
    @valUser = Validate_user.new
    @valPassword = Validate_password.new
  end

  def process
    #binding.pry
    @askUser.ask
    user_name = @askUser.username
    if @valUser.validate(user_name) == true
      @askPassword.ask
      user_password = @askPassword.password
      if @valPassword.validate(user_password) == true
        puts "Enter some text:"
        user_text = gets.chomp
        words_array = user_text.split
        puts "The number of words is: #{words_array.length}"
      end
    end
  end
end


tool1 = Tool.new

tool1.process













# class Login
#
#   def initialize(user, password)
#     @users = {
#       :user => "Cristiano",
#       :password => "Ronaldo"
#     }
#     @user = user
#     @password = password
#   end
#
#   def validate_login
#     return true if @user == @users[:user] && @password == @users[:password]
#   end
# end
#
#
# class AI
#
#   def self.powerful_algorithm
#     puts "Ask me ANYTHING you want:"
#     input_string = gets.chomp
#     puts "Select what to do with your text: \n a=count words \n b=count letters \n c=reverse the text \n d=convert the text to uppercase \n e=convert the text to lowercase"
#     selection = gets.chomp
#     puts "Ok,the answer is:"
#     result = case selection
#       when "a"
#         words_array = input_string.split(" ")
#         words_array.length
#       when "b"
#         input_string.size
#       when "c"
#         input_string.reverse!
#       when "d"
#         input_string.upcase!
#         if input_string.upcase! == nil
#           input_string
#         else
#           input_string.upcase!
#         end
#       when "e"
#         # NO SE MUESTRA NADA Y NO SÉ PORQUÉ. Todo está en minúsculas pero debería de mostrarlo iguamente
#         # input_string.downcase!
#         if input_string.downcase! == nil
#           input_string
#         else
#           input_string.downcase!
#         end
#       else
#         "Incorrect selection"
#     end
#     puts result
#
#   end
#
# end
#
#
#
# puts "Username:"
# user = gets.chomp
# puts "Password:"
# password = gets.chomp
#
# if Login.new(user, password).validate_login == true
#   # AI.new.powerful_algorithm
#   AI.powerful_algorithm
# end
