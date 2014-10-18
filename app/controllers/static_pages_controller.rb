class StaticPagesController < ApplicationController
  def index
  end

  def select
    if params['data']
      @keywords = params['data']['keywords']
      @question_number = params['data']['number'].to_i + 1
    else
      @keywords = []
      @question_number = 1
    end

    excludes = params['excludes'] || []
    question = get_question(excludes)

    if @question_number <= 3
      @answers = question.answers
      @question_text = "Q#{@question_number}. #{question.text}"
    else
      redirect_to(action: :result, params: { keywords: @keywords })
    end
  end

  def result
    p params
    @keywords ||= params['keywords']
  end
end
