require 'spec_helper'

describe "userhas/show" do
  before(:each) do
    @userha = assign(:userha, stub_model(Userha,
      :name => "Name",
      :email => "Email",
      :firstarticle => "Firstarticle",
      :secondarticle => "Secondarticle"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Firstarticle/)
    rendered.should match(/Secondarticle/)
  end
end
