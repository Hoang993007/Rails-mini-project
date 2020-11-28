require 'test_helper'

class PhotoReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @photo_review = photo_reviews(:one)
  end

  test "should get index" do
    get photo_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_photo_review_url
    assert_response :success
  end

  test "should create photo_review" do
    assert_difference('PhotoReview.count') do
      post photo_reviews_url, params: { photo_review: { photo_id: @photo_review.photo_id, review: @photo_review.review, user_id: @photo_review.user_id } }
    end

    assert_redirected_to photo_review_url(PhotoReview.last)
  end

  test "should show photo_review" do
    get photo_review_url(@photo_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_photo_review_url(@photo_review)
    assert_response :success
  end

  test "should update photo_review" do
    patch photo_review_url(@photo_review), params: { photo_review: { photo_id: @photo_review.photo_id, review: @photo_review.review, user_id: @photo_review.user_id } }
    assert_redirected_to photo_review_url(@photo_review)
  end

  test "should destroy photo_review" do
    assert_difference('PhotoReview.count', -1) do
      delete photo_review_url(@photo_review)
    end

    assert_redirected_to photo_reviews_url
  end
end
