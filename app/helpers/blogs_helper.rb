module BlogsHelper


  def gravatar_helper user
    image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}", width: 60
  end

  

  def blog_status_color(blog)
    if blog.draft?
      'blog-draft'
    else
      'blog-published'
    end
  end


end
