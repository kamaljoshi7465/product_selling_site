require "test_helper"

class IdproofsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @idproof = idproofs(:one)
  end

  test "should get index" do
    get idproofs_url
    assert_response :success
  end

  test "should get new" do
    get new_idproof_url
    assert_response :success
  end

  test "should create idproof" do
    assert_difference("Idproof.count") do
      post idproofs_url, params: { idproof: { document: @idproof.document } }
    end

    assert_redirected_to idproof_url(Idproof.last)
  end

  test "should show idproof" do
    get idproof_url(@idproof)
    assert_response :success
  end

  test "should get edit" do
    get edit_idproof_url(@idproof)
    assert_response :success
  end

  test "should update idproof" do
    patch idproof_url(@idproof), params: { idproof: { document: @idproof.document } }
    assert_redirected_to idproof_url(@idproof)
  end

  test "should destroy idproof" do
    assert_difference("Idproof.count", -1) do
      delete idproof_url(@idproof)
    end

    assert_redirected_to idproofs_url
  end
end
