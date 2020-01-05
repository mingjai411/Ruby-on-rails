require 'rails_helper'

RSpec.describe User, :type => :model do
  context "check validation of model" do
    let(:first_name) {'ming'}
    let(:last_name) {'jai'}
    let(:ages) {18}
    let(:gender) {'male'}
    subject {User.new(first_name: first_name, last_name:last_name, ages:ages, gender:gender)}

    it "is valid" do
      expect(subject).to be_valid
    end
    
    context "first_name is nil"do
      let(:first_name) {nil}
      it "is not to be valid"do
        expect(subject).to_not be_valid
      end
    end

    context "last_name is nil"do
      let(:last_name) {nil}
      it "is not to be valid"do
        expect(subject).to_not be_valid
      end
    end

    context "ages is nil"do
      let(:ages) {nil}
      it "is not to be valid"do
        expect(subject).to_not be_valid
      end
    end

    context "gender is nil"do
      let(:gender) {nil}
      it "is not to be valid"do
        expect(subject).to_not be_valid
      end
    end

    context "age is not integer"do
      let(:ages) {'sixteen'}
      it "is not to be valid"do
        expect(subject).to_not be_valid
      end
    end

    context "gender is not in list"do
      let(:gender) {'man'}
      it "is not to be valid"do
        expect(subject).to_not be_valid
      end
    end
  end
end