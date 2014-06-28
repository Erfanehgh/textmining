require 'spec_helper'

describe Articles do

#  let(:user) { FactoryGirl.create(:user) }
  before do
    # This code is not idiomatically correct.
    @micropost = Articles.new(firstarticle: "Salam this is first article",secondarticle:"salam this is second article", user_id:1)
  end

  subject { @micropost }

it { should respond_to(:firstarticle) }
it { should respond_to(:secondarticle) }
it { should respond_to(:user_id) }

end
