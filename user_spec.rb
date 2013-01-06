require "./user"

describe User do
  let( :user_info ) do
    { :name => "James Brown", :style => "Funk" }
  end

  let( :user ) { User.new user_info }

  describe "info method" do
    before :each do
      user.token = 'the-dummy-token'
    end

    it "returns user info if facebook_token valid" do
      user.stub(:token_valid?).and_return(true)  

      user.info.should == user_info
    end

    it "returns nil if token not valid" do
      user.stub(:token_valid?).and_return(false)

      user.info.should be_nil
    end
  end
end
