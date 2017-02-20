class Topic < ApplicationRecord
  enum language: { english: 0, portuguese: 1 }
  validates_presence_of :title
  has_many :blogs

  def self.with_blogs
    includes(:blogs).where.not(blogs: { id: nil } )
  end

  def self.language(locale)
    if locale == "en"
      english
    else
      portuguese
    end
  end
end
