require 'test_helper'

class AlbumGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @album_group = album_groups(:one)
  end

  test "should get index" do
    get album_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_album_group_url
    assert_response :success
  end

  test "should create album_group" do
    assert_difference('AlbumGroup.count') do
      post album_groups_url, params: { album_group: {  } }
    end

    assert_redirected_to album_group_url(AlbumGroup.last)
  end

  test "should show album_group" do
    get album_group_url(@album_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_album_group_url(@album_group)
    assert_response :success
  end

  test "should update album_group" do
    patch album_group_url(@album_group), params: { album_group: {  } }
    assert_redirected_to album_group_url(@album_group)
  end

  test "should destroy album_group" do
    assert_difference('AlbumGroup.count', -1) do
      delete album_group_url(@album_group)
    end

    assert_redirected_to album_groups_url
  end
end
