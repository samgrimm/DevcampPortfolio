class Project < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :body
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                reject_if: lambda { |attrs| attrs['name'].blank? }
  mount_uploader :thumb_image, ProjectUploader
  mount_uploader :main_image, ProjectUploader

  def self.angular
    where(subtitle: "Angular")
  end

  def self.by_position
    order("position ASC")
  end

  scope :ruby_on_rails_projects, -> { where(subtitle: "Ruby on Rails") }


end
