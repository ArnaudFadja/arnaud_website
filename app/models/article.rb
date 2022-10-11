class Article < ApplicationRecord
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged
  translates  :content #, touch: true
  #has_rich_text :content
  has_one_attached :paper
  has_and_belongs_to_many :authors
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: {minimum: 5}
  scope :categorized, -> (category) {where("category LIKE ?", category)}
  scope :sorted_by_date, -> {order('date DESC')}
  delegate :content, to: :translation
  delegate :content=, to: :translation
  after_save do
    content.save if content_changed?
  end

  class Translation
    has_rich_text :content
  end

  def slug_candidates
    [:title,
     [:title, :category]
    ]
  end
  def slug=(value)
    if value.present?
      write_attribute(:slug, value)
    end
  end
  def author_names
    names = ''
    authors = self.authors
    len = authors.length
    if len == 1
      names = authors[0].name
    else
      authors.each_with_index  do |author, index|
        if index+1 == len
          names += 'and '
          names += author.name
        else
          names += author.name
          names += ', '
        end
      end
    end
     names
  end

  def self.save_all
    Article.all.each { |article| article.save! }
  end
end
