require 'rails_helper'

RSpec.describe Alternative, :type => :model do

  describe "shouldas" do
    it { should validate_presence_of(:description) }
    it { should belong_to(:answer).inverse_of(:alternatives) }
    it { should have_one(:question) }
  end
end
