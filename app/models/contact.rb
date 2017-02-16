class Contact < ApplicationRecord
  validates_presence_of :email, :name, :message
end
