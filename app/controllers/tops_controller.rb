class TopsController < ApplicationController
  def index
    @profiles = Profile.all
    @questions = Question.all # データベースからすべての質問を取得
  end

  def show_question
    @question = Question.find_by(category: params[:category])

    if params[:response].present?
      @answer = params[:response] == "はい" ? @question.answer_text : "残念です！！また今度見てね"

      respond_to do |format|
        format.turbo_stream { render turbo_stream: turbo_stream.replace("question-frame-#{@question.id}", partial: 'tops/show_question_response', locals: { question: @question, answer: @answer }) }
      end
    else
      respond_to do |format|
        format.turbo_stream { render turbo_stream: turbo_stream.replace("first-question-frame-#{@question.id}", partial: 'tops/show_question', locals: { question: @question }) }
      end
    end
  end
end
