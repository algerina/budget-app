require 'test_helper'

class GategoriesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get gategories_index_url
    assert_response :success
  end

  test 'should get new' do
    get gategories_new_url
    assert_response :success
  end

  test 'should get create' do
    get gategories_create_url
    assert_response :success
  end
end
