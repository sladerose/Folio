File.open("debug_output.txt", "w") do |f|
  f.puts "Ruby execution successful at #{Time.now}"
  f.puts "Ruby version: #{RUBY_VERSION}"
  f.puts "Environment variables count: #{ENV.to_h.count}"
end
