@characters = {"The Joker" =>
				{
					"nickname" => "funny guy",
					"age" => 47,
					"secret powers" => "jokes, jokes, jokes",
					"strengths" => 
						[
							"sidesplitting humor",
							"sarcasm",
							"improv theater"
						],
					"weaknesses" =>
						[
							"tickling",
							"brocolli",
							"old people"
						]
				},
			"Iron Man" =>
				{
					"nickname" => "Rusty",
					"age" => 35,
					"secret powers" => "abs of steel",
					"strengths" => 
						[
							"pumping iron",
							"metallurgy",
							"blacksmithing"
						],
					"weaknesses" =>
						[
							"rain",
							"puddles",
							"drizzly mornings"
						]
				},
			"Cat Woman" =>
				{
					"nickname" => "Kitty",
					"age" => 26,
					"secret powers" => "hypo-allergenic",
					"strengths" => 
						[
							"purring",
							"contortion",
							"manipulation"
						],
					"weaknesses" =>
						[
							"other people",
							"dogs",
							"spray bottle"
						]
				},
			"Superman"=>{},
			"The Riddler" =>{},
			"Penguin" =>{}}

def battlemode(versus1, versus2)
			if @characters.has_key?(versus1) == false || @characters.has_key?(versus2) == false
			puts "I don't know who these people are"
			
			else
			puts "#{versus1}: #{@characters[versus1]}" 
			puts "#{versus2}: #{@characters[versus2]}"
			end
		end

command = gets.chomp
	if command == "print all"
		@characters.each do |name, attributes|
		puts "#{name}:" 
			attributes.each do |things, other|
				if things == "strengths" || things == "weaknesses"
					puts  "  #{things}:" 
					other.each do |list|
						puts "	#{list}"
					end
				else puts "  #{things}:" "#{other}"
				end	
			end
		end
	elsif command == "Lets Battle"
		puts "Okay, who do you want to fight?"
		
		person1 = gets.chomp

		puts "Against whom?"
		
		person2 = gets.chomp
				
		battlemode(person1, person2)

	else
		puts @characters[command]
end

