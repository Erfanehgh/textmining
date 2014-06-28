require 'spec_helper'

describe "userhas/new" do
  before(:each) do
    assign(:userha, stub_model(Userha,
      :name => "MyString",
      :email => "MyString",
      :firstarticle => "MyString",
      :secondarticle => "MyString"
    ).as_new_record)
  end

  it "renders new userha form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", userhas_path, "post" do
      assert_select "input#userha_name[name=?]", "userha[name]"
      assert_select "input#userha_email[name=?]", "userha[email]"
      assert_select "input#userha_firstarticle[name=?]", "userha[firstarticle]"
      assert_select "input#userha_secondarticle[name=?]", "userha[secondarticle]"
    end
  end
end
