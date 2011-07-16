task :default => [:build]

task :build => :clean do
  require 'haml'
  puts "Creating index.html"
  template = File.read('index.haml', {:format => :html5})
  output = Haml::Engine.new(template).render
  f = File.new("index.html","w")
  f.write(output)
end

task :clean do
  puts "Deleting index.html"
  File.delete("index.html") if File.exist?("index.html")
end
