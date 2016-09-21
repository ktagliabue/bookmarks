class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :email_submission, dependent: :destroy
end
