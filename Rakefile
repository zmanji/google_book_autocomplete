task :default => [:build]

task :build => :clean do

  require 'haml'
  puts "Creating index.html"
  template = File.read('index.haml', {:format => :html5})
  output = Haml::Engine.new(template).render
  f = File.new("index.html","w")
  f.write(output)

  require 'coffee-script'
  puts "Creating book_autocomplete.js"
  output = CoffeeScript.compile File.read("book_autocomplete.coffee")
  f = File.new("book_autocomplete.js","w")
  f.write(output)
end

task :clean do
  puts "Deleting index.html"
  File.delete("index.html") if File.exist?("index.html")
  puts "Deleting book_autocomplete.js"
  File.delete("book_autocomplete.js") if File.exist?("book_autocomplete.js")
end
