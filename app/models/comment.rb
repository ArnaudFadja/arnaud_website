class Comment < ApplicationRecord
  resourcify
  belongs_to :article
  validates :body, presence: true
end
