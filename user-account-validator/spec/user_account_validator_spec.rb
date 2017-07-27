require_relative '../user_account_validator'


RSpec.describe UserAccountValidator do
  let(:good) {{email: "123@123.com", username: "123", name: "123"}}
  let(:bad) {{email: "123[at]123.com", name: "123"}}
  let(:validator_good) {UserAccountValidator.new(good)}
  let(:validator_bad) {UserAccountValidator.new(bad)}

  describe "#initialize" do
    it "accepts a hash as an argument" do
      expect(validator_good.email).to eq("123@123.com")
      expect(validator_good.username).to eq("123")
      expect(validator_good.name).to eq("123")
    end

    it "only raises an error for bad inputs" do
      expect { validator_good.email }.not_to raise_error
      expect { validator_good.username }.not_to raise_error
      expect { validator_good.name }.not_to raise_error
      expect { validator_bad.email }.to raise_error(UserAccountValidator::ValidatorError)
      expect { validator_bad.username }.to raise_error(UserAccountValidator::ValidatorError)
    end
  end

end
