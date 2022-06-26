puts "🌱 Seeding spices..."

# Populate sizes
11.times do |i|
    Size.create(size_name: "#{i}", size_description: "Size #{i}")
  end

puts "✅ Done seeding!"
