# == Schema Information
#
# Table name: banners
#
#  id          :integer          not null, primary key
#  image       :string
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Banner < ActiveRecord::Base
  belongs_to :article

  before_save :reset_article_relation

  validates :image, presence: true
  validates :name, uniqueness: true, allow_blank: true

  private

  def reset_article_relation
  	if self.article_id
  		Banner.where(article_id: self.article_id).ubdate_all(article_id: nill)
  	end
  end
end
