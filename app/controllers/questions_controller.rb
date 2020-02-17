class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @params_question = params[:question]
    if @params_question == 'I am going to work'
      @answer = 'Great!'
    elsif @params_question.include? '?'
      @answer = 'Silly question, get dressed and go to work!.'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
