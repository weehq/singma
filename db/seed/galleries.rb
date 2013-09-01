module Galleries
  puts "[BEGIN] Galleries\n"

  puts "Deleting all galleries ...\n"
  Gallery.delete_all

  puts "Loading Dulwich Hill gallery ...\n"
  (1..38).each do |index|
    Gallery.create(title: 'Dulwich Hill', image: "/assets/gallery/dulwich-hill-liz/dulwich-hill-#{index}.JPG")
  end

  puts "Loading Turramurra gallery ...\n"
  (1..4).each do |index|
    Gallery.create(title: 'Turramurra', image: "/assets/gallery/turramurra-kaz/turramurra-#{index}.jpg")
  end

  puts "[END] Galleries\n\n"
end
