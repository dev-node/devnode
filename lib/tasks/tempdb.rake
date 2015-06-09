namespace :tempdb do
  desc "TODO"
  task create: :environment do
    25.times do |n|
      Project.create(user_id: 1, name: "Test #{n}",
        description: "Quinoa single-origin coffee cred normcore viral, brunch 90's. Tousled organic bicycle rights viral lumbersexual, meditation crucifix. Typewriter keytar drinking vinegar, freegan Shoreditch mumblecore cold-pressed cornhole. Chia plaid hella stumptown irony, flexitarian roof party kitsch ennui mixtape.",
        video: "https://vimeo.com/103126084", repo: "https://github.com/stevetwitte/git2", 
        fulldescription: "Scenester chambray Godard narwhal Thundercats, freegan artisan. Carles cold-pressed art party VHS American Apparel. Sartorial pork belly church-key slow-carb, Banksy yr scenester kogi. Put a bird on it seitan pour-over PBR swag raw denim. Forage twee tousled American Apparel, selfies Pitchfork DIY normcore Etsy deep v gluten-free readymade. Semiotics hella four loko, locavore hoodie drinking vinegar pug meggings. Schlitz aesthetic deep v, normcore salvia +1 fap chambray twee typewriter.

Hella jean shorts plaid, Wes Anderson taxidermy actually Pinterest keytar polaroid normcore. Shoreditch disrupt single-origin coffee, VHS mixtape actually McSweeney's. Ugh Shoreditch Pinterest, selfies beard fap shabby chic kogi typewriter salvia YOLO. 3 wolf moon heirloom master cleanse Etsy, next level PBR&B hashtag you probably haven't heard of them street art brunch. Truffaut lumbersexual cronut occupy Pinterest slow-carb, heirloom messenger bag church-key cold-pressed. Hashtag vegan put a bird on it, selvage sartorial skateboard ennui synth High Life fap occupy cronut keffiyeh cred brunch. Wolf Williamsburg banh mi, actually Pitchfork post-ironic cred meditation literally bitters.", 
        languages: "Ruby on Rails, JavaScript, HTML, CSS",
        facebook: "https://www.facebook.com/allison.a.leonardo", twitter: "https://twitter.com/stephentwitte", trello: "https://trello.com/b/n04zdmSe/devnode", tag_list: "Social, Game, Civic" )
    end

    25.times do |n|
      Project.create(user_id: 1, name: "Novideo #{n}",
        description: "Quinoa single-origin coffee cred normcore viral, brunch 90's. Tousled organic bicycle rights viral lumbersexual, meditation crucifix. Typewriter keytar drinking vinegar, freegan Shoreditch mumblecore cold-pressed cornhole. Chia plaid hella stumptown irony, flexitarian roof party kitsch ennui mixtape.",
        video: "", repo: "https://github.com/stevetwitte/git2", 
        fulldescription: "Scenester chambray Godard narwhal Thundercats, freegan artisan. Carles cold-pressed art party VHS American Apparel. Sartorial pork belly church-key slow-carb, Banksy yr scenester kogi. Put a bird on it seitan pour-over PBR swag raw denim. Forage twee tousled American Apparel, selfies Pitchfork DIY normcore Etsy deep v gluten-free readymade. Semiotics hella four loko, locavore hoodie drinking vinegar pug meggings. Schlitz aesthetic deep v, normcore salvia +1 fap chambray twee typewriter.

Hella jean shorts plaid, Wes Anderson taxidermy actually Pinterest keytar polaroid normcore. Shoreditch disrupt single-origin coffee, VHS mixtape actually McSweeney's. Ugh Shoreditch Pinterest, selfies beard fap shabby chic kogi typewriter salvia YOLO. 3 wolf moon heirloom master cleanse Etsy, next level PBR&B hashtag you probably haven't heard of them street art brunch. Truffaut lumbersexual cronut occupy Pinterest slow-carb, heirloom messenger bag church-key cold-pressed. Hashtag vegan put a bird on it, selvage sartorial skateboard ennui synth High Life fap occupy cronut keffiyeh cred brunch. Wolf Williamsburg banh mi, actually Pitchfork post-ironic cred meditation literally bitters.", 
        languages: "Ruby on Rails, JavaScript, HTML, CSS",
        facebook: "https://www.facebook.com/allison.a.leonardo", twitter: "https://twitter.com/stephentwitte", trello: "https://trello.com/b/n04zdmSe/devnode", tag_list: "Social, Game, Civic" )
    end

  end

end
