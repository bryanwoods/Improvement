require 'test_helper'

class YesVotesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yes_votes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yes_vote" do
    assert_difference('YesVote.count') do
      post :create, :yes_vote => { }
    end

    assert_redirected_to yes_vote_path(assigns(:yes_vote))
  end

  test "should show yes_vote" do
    get :show, :id => yes_votes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => yes_votes(:one).to_param
    assert_response :success
  end

  test "should update yes_vote" do
    put :update, :id => yes_votes(:one).to_param, :yes_vote => { }
    assert_redirected_to yes_vote_path(assigns(:yes_vote))
  end

  test "should destroy yes_vote" do
    assert_difference('YesVote.count', -1) do
      delete :destroy, :id => yes_votes(:one).to_param
    end

    assert_redirected_to yes_votes_path
  end
end
