5.times do |i|
  Article.create(title: "Article  ##{i}", content: "A Content for article #{i}")
end
