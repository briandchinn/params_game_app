class Api::ParamsExamplesController < ApplicationController

  def query_params_action
    name = params[:name].capitalize
    @name = name

    if name[0] == "A"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    else
      @message = "Hello #{name}. You would be a lot cooler if your name started with A."
    end

    render 'query_params.json.jbuilder'
  end

  def guess_action
    winning_number = 5
    guess = params[:guess].to_i

    if guess > winning_number
      @message = "Pick Lower"
    elsif guess < winning_number
      @message = "Pick Higher"
    else 
      @message = "You win"
    end
    render 'guess.json.jbuilder'
  end

end


