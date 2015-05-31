supervillains = {"Joker" => {"height" => "6 foot",
                                    "strengths" => ["Unpredictable", "Guns"],
                                    "weaknesses" => ["Batshit Crazy", "Fire"]
                            },
                 "Cat Woman" => {"height" => "5 foot 4",
                                 "strengths" => ["Can speak to cats", "athletic"],
                                 "weaknesses" => ["Dogs", "Catnip"]
                                },
                 "Iron Man" => {"height" => "12 feet",
                                "strengths" => ["Metal armor", "AI Fairy Godmother"],
                                "weaknesses" => ["Skynet", "Cyberterror"]
                                },
                 "Superman" => {"height" => "8 feet",
                                "strengths" => ["Super Strength", "Bullet proof skin"],
                                "weaknesses" => ["Kryptonite", "Louis Lane"]
                                },
                 "The Riddler" => {"height" => "6 foot 3",
                                   "strengths" => ["Riddles", "Intelligence"],
                                   "weaknesses" => ["puns"]
                                },
                 "Penguin" => {"height" => "4 foot 8",
                               "strengths" => ["marching", "cold weather"],
                               "weaknesses" => ["orcas", "seals"]
                                }
                 }

def compare(hashData)
    puts "WHO IS THE FIRST VILLAIN?"
    villain1 = gets.chomp
    puts "WHO IS THE SECOND VILLAIN?"
    villain2 = gets.chomp
    if hashData.has_key?(villain1) == true && hashData.has_key?(villain2) == true
        puts "#{villain1}: #{hashData[villain1]}"
        puts "#{villain2}: #{hashData[villain2]}"
    else
        puts "One of those is not in our database"
    end
end

puts "BATMAN. IT'S AI-ALFRED. WHICH VILLAIN DO YOU NEED INFORMATION ON? ENTER 'PRINT ALL' IF YOU WANT ALL THE INFORMATION WE HAVE ON FILE. ENTER 'COMPARE' IF YOU WANT TO COMPARE SUPERVILLAINS."

batInput = gets.chomp

if batInput.downcase == "print all"
    supervillains.each do |villain, attribute|
        puts "#{villain}: #{attribute}"
    end
elsif batInput.downcase == "compare"
    compare(supervillains)
elsif supervillains.has_key?(batInput) == true
    puts supervillains [batInput]
else
    puts "stop joking around batman"
end