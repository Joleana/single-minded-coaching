class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @search_query = params[:question]

    @search_result =
      if @search_query.downcase == "i am going to work"
        "Great!"
      elsif @search_query.downcase == "what time is it?"
        Time.now
      elsif @search_query.end_with?("?")
        "Silly question, get dressed and go to work!"
      else
        "I don't care, get dressed and go to work!"
      end
  end
end
