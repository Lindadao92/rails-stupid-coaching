class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question] # check question in URL
    if @question.downcase == 'I am going to work right now!'.downcase
      @answer = 'Great'
    elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I don not care, get dressed and go to work!'
    end
  end
end
