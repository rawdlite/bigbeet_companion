require 'test_helper'

class SecondaryGenresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @secondary_genre = secondary_genres(:one)
  end

  test "should get index" do
    get secondary_genres_url
    assert_response :success
  end

  test "should get new" do
    get new_secondary_genre_url
    assert_response :success
  end

  test "should create secondary_genre" do
    assert_difference('SecondaryGenre.count') do
      post secondary_genres_url, params: { secondary_genre: {  } }
    end

    assert_redirected_to secondary_genre_url(SecondaryGenre.last)
  end

  test "should show secondary_genre" do
    get secondary_genre_url(@secondary_genre)
    assert_response :success
  end

  test "should get edit" do
    get edit_secondary_genre_url(@secondary_genre)
    assert_response :success
  end

  test "should update secondary_genre" do
    patch secondary_genre_url(@secondary_genre), params: { secondary_genre: {  } }
    assert_redirected_to secondary_genre_url(@secondary_genre)
  end

  test "should destroy secondary_genre" do
    assert_difference('SecondaryGenre.count', -1) do
      delete secondary_genre_url(@secondary_genre)
    end

    assert_redirected_to secondary_genres_url
  end
end
