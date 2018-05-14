class QuestionsController < ApplicationController

  # ANSWERS = {
  #   silly: "Silly question, get dressed and go to work!",
  #   great: "Great!",
  #   work: "I don't care, get dressed and go to work!"
  # }
  # i don't need to save the answers in hash, i write them in the if else statement

  def ask
    # It works, but why don't I have to 'connect it' to the view?
    # because we are not pushing any information or logic to a data base
    # we still the method cause we need an action to display the form on the ask page
  end

  def answer
    if params[:question].nil? #we handle the case when there is no question, avoiding the propgram to break
      @answer = "So what?"
    elsif params[:question].include? "?"
      @answer = "Silly question, get dressed and go to work!"
    elsif params[:question] == "I am going to work"
      @answer = "Great!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
