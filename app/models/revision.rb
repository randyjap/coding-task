# == Schema Information
#
# Table name: revisions
#
#  id          :integer          not null, primary key
#  question_id :integer          not null
#  version     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Revision < ApplicationRecord
  validates :question, :version, presence: true

  belongs_to :question, inverse_of: :revisions
  before_validation :calculate_version
  has_many :answers, inverse_of: :revision

  private

  def calculate_version
    self.version = self.question.revisions.count + 1
  end
end
