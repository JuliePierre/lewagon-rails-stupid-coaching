class CoachingController < ApplicationController
  def answer
    @question = params[:question]
    @answer = coach_answer_enhanced(@question)
  end

  def coach_answer(question)
    if question == "I am going to work right now!"
      return "Great!"
    elsif question.include? "?"
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(question)
    if question == question.upcase
      if question == "I am going to work right now!".upcase
        return "Great!"
      else
        return "I can feel your motivation!" + " " + coach_answer(question)
      end
    else
      return coach_answer(question)
    end
  end

  def ask
  end
end
