# frozen_string_literal: true

module SummariesHelper
  def build_sentences(collection, with_article = false)
    return "" if collection.empty?
    sentences = collection.map(&:to_s)
    return join_with_and(", ", sentences).with_indefinite_article.html_safe if with_article
    join_with_and(", ", sentences).html_safe
  end

  private

    def join_with_and(delimiter, array)
      return array.first unless array.size > 1
      last = array.slice!(-1)
      "#{array.join(delimiter)} and #{last}"
    end
end
