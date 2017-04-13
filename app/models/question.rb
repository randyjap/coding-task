# == Schema Information
#
# Table name: questions
#
#  id                   :integer          not null, primary key
#  description          :string           not null
#  approved_revision_id :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Question < ApplicationRecord
  validates :description, presence: true

  has_many :revisions, inverse_of: :question
  belongs_to :approved_revision,
             class_name: "Revision",
             foreign_key: "approved_revision_id",
             optional: true
  has_many :answers, through: :approved_revision

  def approved_answers
    if self.approved_revision
      self.approved_revision.answers
    else
      []
    end
  end
end
