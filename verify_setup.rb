# Standalone Verification Script
# This avoids 'bundle exec' if possible by loading the vendor path directly

puts "Verification started..."
$LOAD_PATH.unshift File.expand_path("vendor/bundle/ruby/3.4.0/gems", __dir__)

begin
  require_relative "config/environment"
  puts "Rails environment loaded!"

  # Test Room creation
  room = Room.create!(title: "Verification Room")
  puts "Room created: #{room.title} (ID: #{room.id}, Token: #{room.token})"

  # Test Item addition
  link = Link.create!(url: "https://google.com", title: "Google")
  item = room.items.create!(itemable: link)
  puts "Item added: #{item.itemable.title} to room #{room.title}"

  # Verification Summary
  puts "Verification SUCCESSFUL"
rescue => e
  puts "Verification FAILED: #{e.message}"
  puts e.backtrace.first(10)
end
