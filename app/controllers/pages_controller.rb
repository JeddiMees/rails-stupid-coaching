class PagesController < ApplicationController
  def answer
   @question = params[:query]
   @answer = coach_answer_enhanced(@question)
 end

 def ask

 end

 def coach_answer(your_message)
  if your_message.to_s.downcase == "i am going to work right now!"
    return ""
  elsif your_message.to_s.include?("?")
    answer = "Silly question, get dressed and go to work!"
    return answer.to_s
  else
    answer = "I don't care, get dressed and go to work!"
    return answer.to_s # TODO: return coach answer to your_message
  end
end


def coach_answer_enhanced(your_message)
  if your_message == "I AM GOING TO WORK RIGHT NOW!"
    return ""
  elsif your_message == your_message.to_s.upcase
    answer = "I can feel your motivation! #{coach_answer(your_message)}"
    return answer

  else
    coach_answer(your_message)
  end
  # TODO: return coach answer to your_message, with additional custom rules of yours!
end

end
