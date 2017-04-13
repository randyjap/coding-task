# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  revision_id :integer          not null
#  description :string           not null
#  correct     :boolean          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Answer < ApplicationRecord
  validates :description, :revision, presence: true
  validates :correct, inclusion: { in: [ true, false ] }

  has_one :question, through: :revision
  belongs_to :revision, inverse_of: :answers
  has_many :alternatives, inverse_of: :answer
end
