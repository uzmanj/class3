bands = {"cisco" => "thong song", "backstreet boys" => "I want it that way", "Destiny's Child" => "Jumpin Jumpin", "macklemore" => "Thrift Shop", "will smith" => "Yo Home To Bel-Air"}

bands.each do |artist,song|
    puts artist
    if artist.downcase == "macklemore" || artist.downcase == "jay z"
        puts "#{artist} isn't from the 90s"
    else
        puts song
    end
end