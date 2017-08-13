require 'test_helper'

class TalentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @talent = talents(:one)
  end

  test "should get index" do
    get talents_url
    assert_response :success
  end

  test "should get new" do
    get new_talent_url
    assert_response :success
  end

  test "should create talent" do
    assert_difference('Talent.count') do
      post talents_url, params: { talent: { address2: @talent.address2, address: @talent.address, biography: @talent.biography, birthday: @talent.birthday, booking_id: @talent.booking_id, city: @talent.city, eyecolor: @talent.eyecolor, first_name: @talent.first_name, government_id: @talent.government_id, has_visible_tattoo: @talent.has_visible_tattoo, last_name: @talent.last_name, middle_name: @talent.middle_name, pantlength: @talent.pantlength, phone: @talent.phone, sex: @talent.sex, state: @talent.state, topsuit: @talent.topsuit, username: @talent.username, waisthip: @talent.waisthip, zipcode: @talent.zipcode } }
    end

    assert_redirected_to talent_url(Talent.last)
  end

  test "should show talent" do
    get talent_url(@talent)
    assert_response :success
  end

  test "should get edit" do
    get edit_talent_url(@talent)
    assert_response :success
  end

  test "should update talent" do
    patch talent_url(@talent), params: { talent: { address2: @talent.address2, address: @talent.address, biography: @talent.biography, birthday: @talent.birthday, booking_id: @talent.booking_id, city: @talent.city, eyecolor: @talent.eyecolor, first_name: @talent.first_name, government_id: @talent.government_id, has_visible_tattoo: @talent.has_visible_tattoo, last_name: @talent.last_name, middle_name: @talent.middle_name, pantlength: @talent.pantlength, phone: @talent.phone, sex: @talent.sex, state: @talent.state, topsuit: @talent.topsuit, username: @talent.username, waisthip: @talent.waisthip, zipcode: @talent.zipcode } }
    assert_redirected_to talent_url(@talent)
  end

  test "should destroy talent" do
    assert_difference('Talent.count', -1) do
      delete talent_url(@talent)
    end

    assert_redirected_to talents_url
  end
end
