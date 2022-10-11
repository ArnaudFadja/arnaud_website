class Author < ApplicationRecord
  resourcify
  has_and_belongs_to_many :articles
  validates :name, presence: true
  def given_name
    name
  end
end
