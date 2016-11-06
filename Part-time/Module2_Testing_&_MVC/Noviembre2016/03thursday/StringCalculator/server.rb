require 'sinatra'
require 'pry'
# require 'sinatra/reloader'
require_relative './StringCalculator'


enable :sessions


get "/add" do
  erb(:add)
end


get "/substract" do
  erb(:substract)
end


get "/multiply" do
  erb(:multiply)
end


get "/divide" do
  erb(:divide)
end


get "/calculator" do
  # @valor = 50
  @valor =IO.read("public/result.txt")

  erb(:calculator)
end


get "/solution" do

  # 1a forma
  # cal = StringCalculator.new
  # @solution = cal.add("#{@first_number},#{@second_number}")
  # erb(:solution)

  # 2a forma
  @first_number = session[:first_number]
  @second_number = session[:second_number]
  @solution = session[:solution]
  @oper = session[:oper]
  Madridhour = Time.now
  @NewYorkhour = Madridhour.hour - 5
  @Tokiohour = Madridhour.hour + 8
  @Moscuhour = Madridhour.hour + 2
  erb(:solution)


end


post "/calculate_add" do
  if params[:first_number].nil? || params[:second_number].nil?
    status 404
  else

  # 1a forma
    # @first_number = params[:first_number]
    # @second_number = params[:second_number]
    # cal = StringCalculator.new
    # @solution = cal.add("#{@first_number},#{@second_number}")
    # erb(:solution)

  # 2a forma
    first_number = params[:first_number]
    second_number = params[:second_number]
    session[:first_number] = params[:first_number].to_s
    session[:second_number] = params[:second_number].to_s
    cal = StringCalculator.new
    session[:solution] = cal.add("#{first_number},#{second_number}").to_s
    session[:oper] = "+"
    redirect to "/solution"

  end
end


post "/calculate_substract" do
  num1 = params[:first_number].to_f
  num2 = params[:second_number].to_f
  if params[:first_number].nil? || params[:second_number].nil? || num1.class != Float || num2.class != Float
    status 404
  else

  # 1a forma
    # @first_number = params[:first_number]
    # @second_number = params[:second_number]
    # cal = StringCalculator.new
    # @solution = cal.add("#{@first_number},#{@second_number}")
    # erb(:solution)

  # 2a forma
    first_number = params[:first_number]
    second_number = params[:second_number]
    session[:first_number] = params[:first_number].to_s
    session[:second_number] = params[:second_number].to_s
    cal = StringCalculator.new
    session[:solution] = cal.substract("#{first_number},#{second_number}").to_s
    session[:oper] = "-"
    redirect to "/solution"

  end
end


post "/calculate_multiply" do
  if params[:first_number].nil? || params[:second_number].nil?
    status 404
  else

  # 1a forma
    # @first_number = params[:first_number]
    # @second_number = params[:second_number]
    # cal = StringCalculator.new
    # @solution = cal.add("#{@first_number},#{@second_number}")
    # erb(:solution)

  # 2a forma
    first_number = params[:first_number]
    second_number = params[:second_number]
    session[:first_number] = params[:first_number].to_s
    session[:second_number] = params[:second_number].to_s
    cal = StringCalculator.new
    session[:solution] = cal.multiply("#{first_number},#{second_number}").to_s
    session[:oper] = "*"
    redirect to "/solution"

  end
end


post "/calculate_divide" do
  if params[:first_number].nil? || params[:second_number].nil?
    status 404
  else

  # 1a forma
    # @first_number = params[:first_number]
    # @second_number = params[:second_number]
    # cal = StringCalculator.new
    # @solution = cal.add("#{@first_number},#{@second_number}")
    # erb(:solution)

  # 2a forma
    first_number = params[:first_number]
    second_number = params[:second_number]
    session[:first_number] = params[:first_number].to_s
    session[:second_number] = params[:second_number].to_s
    cal = StringCalculator.new
    session[:solution] = cal.add("#{first_number},#{second_number}").to_s
    session[:oper] = "+"
    redirect to "/solution"

  end
end


post "/calcul" do
  # puts params
  if params[:first_number].nil? || params[:second_number].nil?
    status 404
  else

  # 1a forma
    # @first_number = params[:first_number]
    # @second_number = params[:second_number]
    # cal = StringCalculator.new
    # @solution = cal.add("#{@first_number},#{@second_number}")
    # erb(:solution)

  # 2a forma
    first_number = params[:first_number]
    second_number = params[:second_number]
    session[:first_number] = params[:first_number].to_s
    session[:second_number] = params[:second_number].to_s
    cal = StringCalculator.new
    operation = params["operation"]
    case operation
    when "addition"
        session[:solution] = cal.add("#{first_number},#{second_number}").to_s
        session[:oper] = "+"
    when "substraction"
        session[:solution] = cal.substract("#{first_number},#{second_number}").to_s
        session[:oper] = "-"
    when "multiplication"
        session[:solution] = cal.multiply("#{first_number},#{second_number}").to_s
        session[:oper] = "*"
    else
      session[:solution] = cal.divide("#{first_number},#{second_number}").to_s
      session[:oper] = "/"
    end

    redirect to "/solution"

  end
end


post "/solution_with_save" do
  store = params["store"]
  if store = "store"
    IO.write("public/result.txt", session[:solution])
  end

end



# get "/optional_parameter" do
#   "Hello #{params[:p1]}, #{params[:p2]}"
# end
