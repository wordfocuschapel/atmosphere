# load database with scriptures topics
namespace :db do
  desc "add scriptures and topics"
  task populate: :environment do
    Topic.create(title: "Health")  
 	Topic.create(title: "Career")
 	Topic.create(title: "Education")
 	Topic.create(title: "Marriage")
 	Topic.create(title: "Children")
 	Topic.create(title: "Fruit of the womb")
 	Topic.create(title: "Home")
 	Topic.create(title: "Business")
 	Topic.create(title: "Finance")
 	Topic.create(title: "Decision making")
 	Topic.create(title: "wisdom")
 	Topic.create(title: "Trials")
 	Topic.create(title: "Faith")
 	Topic.create(title: "Miracle")
 	Topic.create(title: "Holy Spirit")
 	Topic.create(title: "Patience")
 	Topic.create(title: "Ministry")
 	Topic.create(title: "Ten Commandments")
 	Topic.create(title: "Love")
 	Topic.create(title: "Peace")
 	Topic.create(title: "God's promises")
 	Topic.create(title: "Jesus parables")
 	Topic.create(title: "Jesus miracles")
 	Topic.create(title: "Salvation")
 	Topic.create(title: "Gifts of the Spirit")
 	Topic.create(title: "Fruits of the Spirit")
 	Topic.create(title: "Heart")
  end
end
