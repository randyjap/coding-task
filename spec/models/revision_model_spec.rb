require 'rails_helper'

RSpec.describe Revision, :type => :model do

  describe "shouldas" do
    it { should belong_to(:question).inverse_of(:revisions) }
    it { should have_many(:answers).inverse_of(:revision) }
  end
end
