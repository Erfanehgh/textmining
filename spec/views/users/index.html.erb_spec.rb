require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :name => "Name",
        :email => "Email",
        :firstarticle => "Firstarticle",
        :secondarticle => "Secondarticle"
      ),
      stub_model(User,
        :name => "Name",
        :email => "Email",
        :firstarticle => "Firstarticle",
        :secondarticle => "Secondarticle"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Firstarticle".to_s, :count => 2
    assert_select "tr>td", :text => "Secondarticle".to_s, :count => 2
  end
end
