# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all

post_one = Post.create(title: "Squid tattooed pug readymade brunch chia.", content: "Banjo Godard Kickstarter irony scenester, Schlitz narwhal shabby chic Wes Anderson lo-fi Pinterest. Lumbersexual meggings sustainable occupy. Hashtag locavore Thundercats fanny pack, distillery readymade cray occupy church-key chillwave craft beer. Bitters taxidermy Kickstarter, Shoreditch deep v twee Tumblr 90's polaroid Vice artisan viral American Apparel mustache farm-to-table.", photo_url: "http://cdni.wired.co.uk/1920x1280/g_j/hipster.jpg" )
post_two = Post.create(title: "Fap Banksy disrupt hashtag, butcher PBR&B chillwave Brooklyn blog stumptown.", content: "Salvia YOLO chambray, crucifix McSweeney's narwhal skateboard. Kitsch next level tilde, put a bird on it ethical messenger bag Tumblr. Kogi ethical lo-fi, butcher fanny pack Odd Future hella tilde disrupt fingerstache High Life church-key wolf YOLO plaid. Photo booth Thundercats cray four dollar toast, hashtag paleo McSweeney's cold-pressed synth salvia yr crucifix 3 wolf moon listicle umami.", photo_url: "http://cultr.sampleface.co.uk/wp-content/uploads/2015/05/hipster.jpg" )
