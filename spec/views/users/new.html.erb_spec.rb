require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :location => "MyString",
      :party => "MyString",
      :email => "MyString",
      :profile_pic => "MyString",
      :password_digest => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_first_name[name=?]", "user[first_name]"

      assert_select "input#user_last_name[name=?]", "user[last_name]"

      assert_select "input#user_location[name=?]", "user[location]"

      assert_select "input#user_party[name=?]", "user[party]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_profile_pic[name=?]", "user[profile_pic]"

      assert_select "input#user_password_digest[name=?]", "user[password_digest]"
    end
  end
end
