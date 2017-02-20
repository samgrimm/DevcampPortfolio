module ApplicationHelper

  def login_helper style = ''
    if current_user.is_a?(GuestUser)
      (link_to t('login'), new_user_session_path(locale: I18n.locale), class: style) + " ".html_safe +
      (link_to t('register'), new_user_registration_path(locale: I18n.locale), class: style)
    else
      link_to t('logout'), destroy_user_session_path(locale: I18n.locale), method: :delete , class: style
    end
  end

  def source_helper(styles)
     if session[:source]
       greeting = "Thanks for visiting me from #{session[:source]}. Please feel
       free to #{ link_to 'contact me', contact_me_path(locale: I18n.locale) } if you would like to work together."
       content_tag(:div, greeting.html_safe, class: styles, role:"alert")
     end
  end


  def copyright_generator(locale)
    if locale == :en
      @copyright = SamViewTool::Renderer.copyright 'Samantha Cabral', 'All rights reserved'
    else
      @copyright = SamViewTool::Renderer.copyright 'Samantha Cabral', 'Direitos reservados'
    end
  end

  def nav_items
    [
      {
        url: root_path(params[:locale]),
        title: t('.home')
      },
      {
        url: about_me_path(params[:locale]),
        title: t('.about')
      },
      {
        url: contact_me_path(params[:locale]),
        title: t('.contact')
      },
      {
        url: blogs_path(params[:locale]),
        title: t('.blogs')
      },
      {
        url: projects_path(params[:locale]),
        title: t('.projects')
      },
      {
        url: tech_news_path(params[:locale]),
        title: t('.tech_news')
      }
    ]
  end

  def nav_helper style, tag_type
    nav_links = ''
    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}' >#{item[:title]}</a></#{tag_type}>"
    end
    nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end

  def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])
    if alert
      alert_generator alert
    end
  end

  def alert_generator msg
    js add_gritter(msg, title: "Samantha Cabral Portfolio", sticky: false)
  end
end
