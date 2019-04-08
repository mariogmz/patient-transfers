# frozen_string_literal: true

require "test_helper"

class SummariesHelperTest < ActionView::TestCase
  test "#build_sentences" do
    collection = ["cut five onions", "preheat the pan", "cook"]
    expected = "cut five onions, preheat the pan and cook"
    assert_equal(expected, build_sentences(collection))
  end
end
