require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
  setup do
    @quote = quotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quote" do
    assert_difference('Quote.count') do
      post :create, quote: { access_difficulty: @quote.access_difficulty, created_at: @quote.created_at, full_renovation: @quote.full_renovation, ground_floor: @quote.ground_floor, job_completion: @quote.job_completion, name: @quote.name, other_renovation: @quote.other_renovation, phone: @quote.phone, postcode: @quote.postcode }
    end

    assert_redirected_to quote_path(assigns(:quote))
  end

  test "should show quote" do
    get :show, id: @quote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quote
    assert_response :success
  end

  test "should update quote" do
    put :update, id: @quote, quote: { access_difficulty: @quote.access_difficulty, created_at: @quote.created_at, full_renovation: @quote.full_renovation, ground_floor: @quote.ground_floor, job_completion: @quote.job_completion, name: @quote.name, other_renovation: @quote.other_renovation, phone: @quote.phone, postcode: @quote.postcode }
    assert_redirected_to quote_path(assigns(:quote))
  end

  test "should destroy quote" do
    assert_difference('Quote.count', -1) do
      delete :destroy, id: @quote
    end

    assert_redirected_to quotes_path
  end
end
