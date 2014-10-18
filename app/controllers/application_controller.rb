class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Pick up some question.
  def get_question(excludes = [])
    Question.where.not(id: excludes).sample
  end

  def create_sentence(keywords, question_ids)
    categories = qids2category(question_ids.map(&:to_i))

    p categories

    categories.zip(keywords).map do |category, keyword|
      pick_word(category).gsub('**', keyword)
    end
  end

  def pick_word(category)
    Word.where(category: category).sample.text
  end

  def qids2category(ids)
    result = Question.where(id: ids)

    ids.map{|id| result.find{|e| e.id == id}.category }
  end
end
