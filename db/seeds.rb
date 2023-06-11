require "open-uri"

Movie.destroy_all

puts "Creating movies"

Fast_X = Movie.new(title: "Fast X", description: "Dom Toretto and his family are targeted by the vengeful son of drug kingpin Hernan Reyes.",
                  release_date: Date.new(2023,5,19))

fast_x_photo = URI.open("https://www.themoviedb.org/t/p/original/fiVW06jE7z9YnO4trhaMEdclSiC.jpg")
Fast_X.photo.attach(io: fast_x_photo, filename: "nes.png", content_type: "image/png")
Fast_X.save
