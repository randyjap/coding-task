# == Schema Information
#
# Table name: alternatives
#
#  id          :integer          not null, primary key
#  answer_id   :integer          not null
#  description :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Alternative < ApplicationRecord
  validates :description, :answer, presence: true

  belongs_to :answer, inverse_of: :alternatives
  has_one :question, through: :answer
end
