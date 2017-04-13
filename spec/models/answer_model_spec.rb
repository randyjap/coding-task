require 'rails_helper'

RSpec.describe Answer, :type => :model do

  describe "shouldas" do
    it { should validate_presence_of(:description) }
    it { should belong_to(:revision).inverse_of(:answers) }
    it { should have_many(:alternatives).inverse_of(:answer) }
    it { should validate_inclusion_of(:correct).in_array([true, false]) }
  end
end
