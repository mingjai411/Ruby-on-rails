require 'rails_helper'

RSpec.describe Shop, :type => :model do
  context "check validation of model" do
    let(:shop_name) {'banana'}
    subject {Shop.new(shop_name: shop_name)}

    it "is valid" do
      expect(subject).to be_valid
    end

    context "shop_name is nil" do
      let(:shop_name) {nil}
      it "is not to be valid" do
        expect(subject).to_not be_valid
      end
    end
  end
end
