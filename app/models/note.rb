class Note < ApplicationRecord
  belongs_to :user
  has_many :taggings
  has_many :tags, through: :taggings

  enum priority: { none: 0, low: 1, medium: 2, critical: 3 }, _prefix: true

  PRIORITY_COLOR_SCHEME = { none: 'black', low: 'yellow', medium: 'orange', critical: 'red' }

  def tag_list=(names)
  	self.tags = names.split(',').map do |tag_text|
  	  Tag.where(text: tag_text.strip).first_or_create
  	end
  end

  def tag_list
  	tags.pluck(:text).join(',')
  end
end
