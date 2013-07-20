# pulled from
# http://diaspunk.blogspot.com/2011/01/rake-task-to-syntax-check-erb-haml-rb.html
namespace :validate do

  require 'open3'

  desc 'validate syntax'

  task :ruby do
    Dir['*.rb'].each do |file|
      Open3.popen3("ruby -Ku -c #{file}") do |stdin, stdout, stderr|
        if error = ((stderr.readline rescue false))
          puts error
        end
        stdin.close rescue false
        stdout.close rescue false
        stderr.close rescue false
      end
    end
  end
end
