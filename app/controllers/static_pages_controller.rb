class StaticPagesController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end

  def select
    if params['data']
      @keywords = params['data']['keywords']
      @question_number = params['data']['number'].to_i + 1
      @excludes = params['data']['excludes']
    else
      @keywords = []
      @question_number = 1
      @excludes = []
    end

    question = get_question(@excludes)

    if @question_number <= 3
      @answers = question.answers
      @excludes << question.id
      @question_text = "Q#{@question_number}. #{question.text}"
    else
      redirect_to(action: :result, params: { keywords: @keywords, question_ids: @excludes })
    end
  end

  def result
    keywords ||= params['keywords']
    question_ids ||= params['question_ids']

    @sentences = create_sentence(keywords, question_ids)
  end
end
