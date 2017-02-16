class Contact < ApplicationRecord
  validates_presence_of :email, :name, :message
  enum status: { received: 0, replied: 1 }

  default_scope { order('created_at DESC') }

  def toggle_status
    if received?
      replied!
    else
      received!
    end
  end
end
