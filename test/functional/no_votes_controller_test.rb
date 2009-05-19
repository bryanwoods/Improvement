require 'test_helper'

class NoVotesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:no_votes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create no_vote" do
    assert_difference('NoVote.count') do
      post :create, :no_vote => { }
    end

    assert_redirected_to no_vote_path(assigns(:no_vote))
  end

  test "should show no_vote" do
    get :show, :id => no_votes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => no_votes(:one).to_param
    assert_response :success
  end

  test "should update no_vote" do
    put :update, :id => no_votes(:one).to_param, :no_vote => { }
    assert_redirected_to no_vote_path(assigns(:no_vote))
  end

  test "should destroy no_vote" do
    assert_difference('NoVote.count', -1) do
      delete :destroy, :id => no_votes(:one).to_param
    end

    assert_redirected_to no_votes_path
  end
end
