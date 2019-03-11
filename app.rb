require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number]
    #binding.pry
    @answer = @number.to_i * @number.to_i
    "#{@answer}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number]
    @number = @number.to_i
    @phrase = params[:phrase]
    "#{@phrase}" * @number
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    @number1 = @number1.to_i
    @number2 = @number2.to_i

    if @operation == "add"
      @addanswer = @number1 + @number2
      "#{@addanswer}"

    elsif @operation == "subtract"
      @minusanswer = @number2 - @number1
      "#{@minusanswer}"

    elsif @operation == "multiply"
      @multiply = @number1 * @number2
      "#{@multiply}"

    elsif @operation == "divide"
      @divide = @number1 / @number2
      "#{@divide}"
    else
      nil
    end
  end



end

#
# Create a dynamic route at get '/say/:number/:phrase' that accepts a number
# and a phrase and returns that phrase in a string the number of times given.
