require 'test_helper'

class WeightRecordsControllerTest < ActionController::TestCase
  setup do
    @weight_record = weight_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weight_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weight_record" do
    assert_difference('WeightRecord.count') do
      post :create, weight_record: { person_id: @weight_record.person_id, test_datetime: @weight_record.test_datetime, weight: @weight_record.weight }
    end

    assert_redirected_to weight_record_path(assigns(:weight_record))
  end

  test "should show weight_record" do
    get :show, id: @weight_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weight_record
    assert_response :success
  end

  test "should update weight_record" do
    patch :update, id: @weight_record, weight_record: { person_id: @weight_record.person_id, test_datetime: @weight_record.test_datetime, weight: @weight_record.weight }
    assert_redirected_to weight_record_path(assigns(:weight_record))
  end

  test "should destroy weight_record" do
    assert_difference('WeightRecord.count', -1) do
      delete :destroy, id: @weight_record
    end

    assert_redirected_to weight_records_path
  end
end
