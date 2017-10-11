require "date"
d = DateTime.now
formatted = d.strftime('%d %B %Y %H:%M:%p')

open('readme.md', 'a') do |f|
    puts formatted
    f.puts "- #{formatted}"
end

exec('git commit -am "update readme at:' + formatted + '" && git push origin master')