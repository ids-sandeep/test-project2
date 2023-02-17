require "test_helper"

class EmployesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get employes_index_url
    assert_response :success
  end

  test "should get show" do
    get employes_show_url
    assert_response :success
  end

  test "should get edit" do
    get employes_edit_url
    assert_response :success
  end

  test "should get new" do
    get employes_new_url
    assert_response :success
  end
end
