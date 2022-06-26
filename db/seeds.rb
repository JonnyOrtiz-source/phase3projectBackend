puts "🌱 Seeding spices..."

# Populate sizes
11.times do |i|
    Size.create(size_name: "#{i}", size_description: "Size #{i}")
  end

# Populate colors
10.times do
    Color.create(
      color_name: Faker::Color.color_name,
    )
  end

puts "✅ Done seeding!"
