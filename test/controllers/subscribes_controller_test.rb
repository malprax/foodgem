require 'test_helper'

class SubscribesControllerTest < ActionController::TestCase
  setup do
    @subscribe = subscribes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subscribes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subscribe" do
    assert_difference('Subscribe.count') do
      post :create, subscribe: { apt: @subscribe.apt, city: @subscribe.city, coupun_code: @subscribe.coupun_code, dinner_day: @subscribe.dinner_day, dinner_time: @subscribe.dinner_time, email: @subscribe.email, email_delivery: @subscribe.email_delivery, extra_note: @subscribe.extra_note, first_name: @subscribe.first_name, foodgembox_price: @subscribe.foodgembox_price, lunch_day: @subscribe.lunch_day, lunch_time: @subscribe.lunch_time, newyork: @subscribe.newyork, paypal: @subscribe.paypal, phone: @subscribe.phone, phone_delivery: @subscribe.phone_delivery, preference: @subscribe.preference, street_address: @subscribe.street_address, tax_price: @subscribe.tax_price, tip_price: @subscribe.tip_price, total_price: @subscribe.total_price, zip: @subscribe.zip, zip: @subscribe.zip }
    end

    assert_redirected_to subscribe_path(assigns(:subscribe))
  end

  test "should show subscribe" do
    get :show, id: @subscribe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subscribe
    assert_response :success
  end

  test "should update subscribe" do
    patch :update, id: @subscribe, subscribe: { apt: @subscribe.apt, city: @subscribe.city, coupun_code: @subscribe.coupun_code, dinner_day: @subscribe.dinner_day, dinner_time: @subscribe.dinner_time, email: @subscribe.email, email_delivery: @subscribe.email_delivery, extra_note: @subscribe.extra_note, first_name: @subscribe.first_name, foodgembox_price: @subscribe.foodgembox_price, lunch_day: @subscribe.lunch_day, lunch_time: @subscribe.lunch_time, newyork: @subscribe.newyork, paypal: @subscribe.paypal, phone: @subscribe.phone, phone_delivery: @subscribe.phone_delivery, preference: @subscribe.preference, street_address: @subscribe.street_address, tax_price: @subscribe.tax_price, tip_price: @subscribe.tip_price, total_price: @subscribe.total_price, zip: @subscribe.zip, zip: @subscribe.zip }
    assert_redirected_to subscribe_path(assigns(:subscribe))
  end

  test "should destroy subscribe" do
    assert_difference('Subscribe.count', -1) do
      delete :destroy, id: @subscribe
    end

    assert_redirected_to subscribes_path
  end
end
