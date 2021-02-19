require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    sign_in users(:regular)
    @contact = contacts(:one)
  end

  test "should get index" do
    get contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_url
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post contacts_url, params: { contact: { city: @contact.city, country: @contact.country, email: @contact.email, first_name: @contact.first_name, last_name: @contact.last_name, notes: @contact.notes, phone: @contact.phone, state: @contact.state, street_address: @contact.street_address, zip_code: @contact.zip_code } }
    end

    assert_redirected_to contact_url(Contact.last)
  end

  test "should show contact" do
    get contact_url(@contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_url(@contact)
    assert_response :success
  end

  test "should update contact" do
    patch contact_url(@contact), params: { contact: { city: @contact.city, country: @contact.country, email: @contact.email, first_name: @contact.first_name, last_name: @contact.last_name, notes: @contact.notes, phone: @contact.phone, state: @contact.state, street_address: @contact.street_address, zip_code: @contact.zip_code } }
    assert_redirected_to contact_url(@contact)
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete contact_url(@contact)
    end

    assert_redirected_to contacts_url
  end

  test "redirected if not logged in" do
    sign_out :user
    get contacts_url
    assert_response :redirect
  end

end
