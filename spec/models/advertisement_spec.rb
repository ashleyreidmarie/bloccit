require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:ad) { Advertisement.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph, price: RandomData.random_number) }
  
  describe "attribute" do
    it "responds to title" do
      expect(ad).to respond_to(:title)
    end
    
    it "responds to body" do
      expect(ad).to respond_to(:body)
    end
    
    it "responds to price" do
      expect(ad).to respond_to(:price)
    end
  end
end
