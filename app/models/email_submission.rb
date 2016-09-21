class EmailSubmission < ApplicationRecord
  belongs_to :user
  has_many :votes
  def up_votes
    votes.where(value: 1).count
  end
end
