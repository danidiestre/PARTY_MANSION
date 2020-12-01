require 'test_helper'

class MansionsControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
  # test "the truth" do
  #   assert true
  # end
=======
  test "should get new" do
    get mansions_new_url
    assert_response :success
  end

  test "should get create" do
    get mansions_create_url
    assert_response :success
  end

>>>>>>> master
end
