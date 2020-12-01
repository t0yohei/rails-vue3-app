require 'test_helper'

class IntegerLiteralDescriptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get integer_literal_descriptions_index_url
    assert_response :success
  end

end
