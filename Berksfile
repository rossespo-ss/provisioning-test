source "https://supermarket.chef.io"

cookbook 'java', '~> 1.36.0'
cookbook 'tomcat', '~> 1.0.1'

Dir["#{File.dirname(__FILE__)}/cookbooks/*"].each do |path|
  cookbook File.basename(path), path: path
end
