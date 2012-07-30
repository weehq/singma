module Galleries
  puts "[BEGIN] Galleries\n"

  puts "Deleting all galleries ...\n"
  Gallery.delete_all

  puts "Loading galleries ...\n"
  (1..38).each do |index|
    Gallery.create(title: 'Dulwich Hill', image: "/assets/gallery/dulwich-hill-liz/dulwich-hill-#{index}.JPG") if index.even?
  end

  puts "[END] Galleries\n\n"
end