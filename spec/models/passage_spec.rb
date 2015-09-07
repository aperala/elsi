require 'rails_helper'

RSpec.describe Passage, :type => :model do

  let(:valid_attributes) {
    @valid_attributes = {
      title: "Test Post", author: "Author Author",
      body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus harum quas maiores similique, nam iste voluptatem tempore culpa ex, odit omnis officia, iure quis eligendi soluta necessitatibus commodi perferendis excepturi!",
      user_id: 1  } }

  describe "validations" do

    it "is invalid without a user_id" do
      test_passage = Passage.create valid_attributes
      test_passage.user_id = nil
      expect(test_passage.valid?).to eq(false)
    end

    it "is invalid without a body" do
      test_attrs = valid_attributes
      test_attrs.delete("body")
      new_passage = Passage.new test_attrs
      expect(new_passage.valid?).to eq(false)
    end
  end
end