# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

y1 = Youtuber.create(name: 'AmazingPhil', category: 'People & Blogs')
y2 = Youtuber.create(name: 'danisnotonfire', category: 'People & Blogs')
y3 = Youtuber.create(name: 'KickthePJ', category: 'Film & Animation')
y4 = Youtuber.create(name: 'Sprinkleofglitter', category: 'How-to & Style')
y5 = Youtuber.create(name: 'PewDiePie', category: 'Gaming')

s1 = Subscriber.create(name: 'Hannah', age: 16, location: 'Ohio')
s2 = Subscriber.create(name: 'Dave', age: 56, location: 'London')
s3 = Subscriber.create(name: 'Debi', age: 24, location: 'Manila')
s4 = Subscriber.create(name: 'Georgia', age: 17, location: 'Melbourne')
s5 = Subscriber.create(name: 'Luis', age: 13, location: 'Madrid')

y1.videos.create(title: 'I DESTROYED MY HOUSE', category: 'People & Blogs', length: 4.13, subscriber: s1)
y2.videos.create(title: 'SPOILER ALERT', category: 'People & Blogs', length: 5.36, subscriber: s2)
y3.videos.create(title: 'Things I Almost Said on Twitter 2', category: 'Film & Animation', length: 6.52, subscriber: s3)
y4.videos.create(title: 'Easy Back To School Tips', category: 'How-to & Style', length: 3.52, subscriber: s4)
y5.videos.create(title: 'Time For Some Honesty!', category: 'Entertainment', length: 3.45, subscriber: s5)

puts 'seeded!'
puts "seeded! with #{Youtuber.all.count} Youtubers"
puts "seeded! with #{Subscriber.all.count} Subscribers"
puts "seeded! with #{Video.all.count} Videos"