# frozen_string_literal: true

require "test_helper"

class SummariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient = patients(:thomas)
  end

  test "should show summary" do
    get patient_url(@patient)
    assert_response :success
  end
end
