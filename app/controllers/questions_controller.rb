class QuestionsController < ApplicationController
  def ask; end

  def answer
    @ask = params[:question]
    @answer = coach_answer(@ask)
  end

  def coach_answer(your_message)
    if your_message == 'I am going to work right now!'
      'Great!'
    elsif your_message.include?('?')
      'Silly question, get dressed and go to work!'
    else
      'I dont care, get dressed and go to work!'
    end
  end
end
