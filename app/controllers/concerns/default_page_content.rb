module DefaultPageContent
  extend ActiveSupport::Concern

  def set_page_defaults
    @page_title = "Samantha Cabral's Portfolio"
    @seo_keywords = "Samantha's Web Development Portfolio"
  end
end
