class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Pick up some question.
  def get_question(excludes = [])
    Question.where.not(id: excludes).sample
  end

  def create_sentence(keywords, question_ids)
    words = Word.all.sample(3)

    words.zip(keywords).map do |word, keyword|
      word.text.gsub('**', keyword)
    end
  end
end
