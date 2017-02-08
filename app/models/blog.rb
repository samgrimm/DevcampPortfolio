class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged

  def toggle_status
    if draft?
      published!
    else
      draft!
    end
  end
end
