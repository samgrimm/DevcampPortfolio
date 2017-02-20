class Project < ApplicationRecord
  include Placeholder
  enum language: { english: 0, portuguese: 1 }
  validates_presence_of :title, :body
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['name'].blank? }
  mount_uploader :thumb_image, ProjectUploader
  mount_uploader :main_image, ProjectUploader

  def self.angular
    where(subtitle: "Angular")
  end

  def self.by_position(locale)
    if locale == "en"
      english.order("position ASC")
    else
      portuguese.order("position ASC")
    end
  end

  scope :ruby_on_rails_projects, -> { where(subtitle: "Ruby on Rails") }


end
