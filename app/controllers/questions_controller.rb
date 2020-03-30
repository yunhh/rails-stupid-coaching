class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:answer]
    if @ask.downcase == 'i am going to work!'
      @answer = 'great!'
    elsif @ask.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
