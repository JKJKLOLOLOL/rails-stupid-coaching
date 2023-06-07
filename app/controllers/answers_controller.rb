# frozen_string_literal: true

class AnswersController < ApplicationController
  def answer
    @question = params[:question]
    @answer = if @question == ' '
                'Great!'
              elsif @question.include?('?')
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
