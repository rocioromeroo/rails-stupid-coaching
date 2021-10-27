class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @ask = params[:ask]
    @answer = ""
    if params[:ask].end_with? "?"
      @answer = "Silly question, get dressed and go to work!"
    elsif params[:ask].downcase == "i am going to work right now!"
      @answer = ""
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
