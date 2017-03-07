# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Photo.destroy_all

photo_list = [
  {"title"=>"Myra's birthday", "date"=>"2013-02-02", "description"=>"This is my favourite photo of Myra's birthday. It was a wonderful day.", "file_location"=>"my-photo/myras-birthday-20130202.jpg"},
  {"title"=>"Family outing", "date"=>"2014-11-13", "description"=>"Spending some time at the park after a long week.", "file_location"=>"my-photo/family-outing-20141113.jpg"},
  {"title"=>"Anniversary", "date"=>"2010-11-22", "description"=>"This is our 2nd anniversary.", "file_location"=>"my-photo/my-anniversary-20101122.jpg"}
]

photo_list.each do |photo|
  Photo.create(:title => photo["title"], :date => photo["date"], :description =>photo["description"], :file_location => photo["file_location"])
end
