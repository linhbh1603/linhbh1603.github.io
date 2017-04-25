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

  before_save :reset_article

  validates :image, presence: true
  validates :name, uniqueness: true,
            allow_blank: true,
            length: { in: 6..10 }

  private

  def reset_article
    if self.article_id
      Banner.where(article_id: self.article_id).
             update_all(article_id: nil)
    end
  end
end
