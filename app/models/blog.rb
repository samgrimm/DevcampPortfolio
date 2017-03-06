class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  enum language: { english: 0, portuguese: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :topic
  has_many :comments, dependent: :destroy

  validates_presence_of :title, :body, :topic

  default_scope { order('created_at DESC') }

  def self.available(locale)
    if locale == "en"
      Blog.published.english
    else
      Blog.published.portuguese
    end
  end

  def other_language
    if self.english?
      "portuguese"
    else
      "english"
    end
  end

  def create_copy
    new_blog = Blog.create(
            title: self.title,
            body: self.body,
            topic_id: self.topic_id,
            language: self.other_language
            )
  end

  def toggle_status
    if draft?
      published!
    else
      draft!
    end
  end


end
