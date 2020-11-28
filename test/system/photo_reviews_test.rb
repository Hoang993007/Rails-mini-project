require "application_system_test_case"

class PhotoReviewsTest < ApplicationSystemTestCase
  setup do
    @photo_review = photo_reviews(:one)
  end

  test "visiting the index" do
    visit photo_reviews_url
    assert_selector "h1", text: "Photo Reviews"
  end

  test "creating a Photo review" do
    visit photo_reviews_url
    click_on "New Photo Review"

    fill_in "Photo", with: @photo_review.photo_id
    fill_in "Review", with: @photo_review.review
    fill_in "User", with: @photo_review.user_id
    click_on "Create Photo review"

    assert_text "Photo review was successfully created"
    click_on "Back"
  end

  test "updating a Photo review" do
    visit photo_reviews_url
    click_on "Edit", match: :first

    fill_in "Photo", with: @photo_review.photo_id
    fill_in "Review", with: @photo_review.review
    fill_in "User", with: @photo_review.user_id
    click_on "Update Photo review"

    assert_text "Photo review was successfully updated"
    click_on "Back"
  end

  test "destroying a Photo review" do
    visit photo_reviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Photo review was successfully destroyed"
  end
end
