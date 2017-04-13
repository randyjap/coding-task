require 'rails_helper'

RSpec.describe Question, :type => :model do

  describe "shouldas" do
    it { should validate_presence_of(:description) }
    it { should have_many(:revisions).inverse_of(:question) }
    it { should belong_to(:approved_revision).inverse_of(:question) }
    it { should have_many(:answers) }
  end
end
