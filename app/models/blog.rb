class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :topic
  has_many :comments, dependent: :destroy

  validates_presence_of :title, :body, :topic

  default_scope { order('created_at DESC') }

  def toggle_status
    if draft?
      published!
    else
      draft!
    end
  end


end
