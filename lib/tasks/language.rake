desc "Add English to All the existing table entries"
task english: :environment do
  blogs = Blog.all
  blogs.each do |blog|
    blog.english!
  end
  topics = Topic.all
  topics.each do |topic|
    topic.english!
  end
  projects = Project.all
  projects.each do |project|
    project.english!
  end
end
