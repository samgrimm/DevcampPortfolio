class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :topic

  validates_presence_of :title, :body

  def toggle_status
    if draft?
      published!
    else
      draft!
    end
  end
end
