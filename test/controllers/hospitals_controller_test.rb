require 'test_helper'

class HospitalsControllerTest < ActionController::TestCase
  setup do
    @hospital = hospitals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hospitals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hospital" do
    assert_difference('Hospital.count') do
      post :create, hospital: { current_sign_in_at: @hospital.current_sign_in_at, current_sign_in_ip: @hospital.current_sign_in_ip, encrypted_password: @hospital.encrypted_password, last_sign_in_at: @hospital.last_sign_in_at, last_sign_in_ip: @hospital.last_sign_in_ip, remember_created_at: @hospital.remember_created_at, reset_password_sent_at: @hospital.reset_password_sent_at, reset_password_token: @hospital.reset_password_token, sign_in_count: @hospital.sign_in_count }
    end

    assert_redirected_to hospital_path(assigns(:hospital))
  end

  test "should show hospital" do
    get :show, id: @hospital
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hospital
    assert_response :success
  end

  test "should update hospital" do
    patch :update, id: @hospital, hospital: { current_sign_in_at: @hospital.current_sign_in_at, current_sign_in_ip: @hospital.current_sign_in_ip, encrypted_password: @hospital.encrypted_password, last_sign_in_at: @hospital.last_sign_in_at, last_sign_in_ip: @hospital.last_sign_in_ip, remember_created_at: @hospital.remember_created_at, reset_password_sent_at: @hospital.reset_password_sent_at, reset_password_token: @hospital.reset_password_token, sign_in_count: @hospital.sign_in_count }
    assert_redirected_to hospital_path(assigns(:hospital))
  end

  test "should destroy hospital" do
    assert_difference('Hospital.count', -1) do
      delete :destroy, id: @hospital
    end

    assert_redirected_to hospitals_path
  end
end
