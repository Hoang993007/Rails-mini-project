require "application_system_test_case"

class AlbumReviewsTest < ApplicationSystemTestCase
  setup do
    @album_review = album_reviews(:one)
  end

  test "visiting the index" do
    visit album_reviews_url
    assert_selector "h1", text: "Album Reviews"
  end

  test "creating a Album review" do
    visit album_reviews_url
    click_on "New Album Review"

    fill_in "Album", with: @album_review.album_id
    fill_in "Review", with: @album_review.review
    fill_in "User", with: @album_review.user_id
    click_on "Create Album review"

    assert_text "Album review was successfully created"
    click_on "Back"
  end

  test "updating a Album review" do
    visit album_reviews_url
    click_on "Edit", match: :first

    fill_in "Album", with: @album_review.album_id
    fill_in "Review", with: @album_review.review
    fill_in "User", with: @album_review.user_id
    click_on "Update Album review"

    assert_text "Album review was successfully updated"
    click_on "Back"
  end

  test "destroying a Album review" do
    visit album_reviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Album review was successfully destroyed"
  end
end
