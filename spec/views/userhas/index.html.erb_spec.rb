require 'spec_helper'

describe "userhas/index" do
  before(:each) do
    assign(:userhas, [
      stub_model(Userha,
        :name => "Name",
        :email => "Email",
        :firstarticle => "Firstarticle",
        :secondarticle => "Secondarticle"
      ),
      stub_model(Userha,
        :name => "Name",
        :email => "Email",
        :firstarticle => "Firstarticle",
        :secondarticle => "Secondarticle"
      )
    ])
  end

  it "renders a list of userhas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Firstarticle".to_s, :count => 2
    assert_select "tr>td", :text => "Secondarticle".to_s, :count => 2
  end
end
