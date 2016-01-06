#5.6 Create Accountability Groups

#Pseudocode
=begin
Turn the names into an array (with each name being its own value)
Then we will do a check on the array to make sure groups of 5 won't leave
	a lone group of <4
Within each statement, we'll slice the group into the relevant
accountability groups.

=end

#People

names_array = "Dong Wook Seo (John)
Aaron Hu
Adam Pinsky
Akeem Street
Alex Forger
Andrew Kim
Baron Kwan
Brian Bier
Byron Gage
Carl Conroy
Charlie Bliss
Christopher Bunkers
Cody Kendall
Coline Forde
David Valencia
Emily Claire Bosakowski
Everett Golden
Hagai Zwick
Heather Conklin
Ian Wudarski
Ieronim Oltean
Jake Hamilton
James Boyd
Jasmeet Chatrath
Jenna El-Amin
Jerrie Evans
Joe Case
Jonathan Case
Jonathan Schwartz
Jonathan Silvestri
Kathryn Garbacz
Ian Kinner
Kyle Cierzan
Kyle Zelman
Linda Oanh Ho
Yiorgos Makridakis
Matt Harris
Matthew Baquerizo
Menuka Samaranayake
Michael Pintar
Mollie Stein
Lydia Nash
Aaron Opsahl
Peter Leong
Peter Stratoudakis
Prince Sadie
Ryan F. Salerno
Sanderfer Chau
Sarah Finken
EMMET SUSSLIN
Sydney Rossman-Reich
Eric Tenza
Thomas Yancey
Tim Kelly
Timothy Beck
Tyler Doerschuk".split("\n").shuffle


def accountability(array)

	if array.size % 5 == 0 || array.size % 5 == 4
		array.each_slice(5).to_a
	else
			if array.size % 4 == 0
				array.each_slice(4).to_a
			elsif array.size % 5 == 3
				array.each_slice(5).to_a
				array[-1] << array[0][-1]
			elsif array.size % 5 == 2
				array.each_slice(5).to_a
				array[-1] << array[0][-1]
				array[-1] << array[1][-1]
			elsif array.size % 5 == 1
				array.each_slice(5).to_a
				array[-1] << array[0][-1]
				array[-1] << array[1][-1]
				array[-1] << array[2][-1]
			end
	end

end

#Refactoring

def accountability(array)

	if 	array.size % 5 == 0 || array.size % 5 == 4
		array.each_slice(5).to_a 
	elsif array.size % 4 == 0
		array.each_slice(4).to_a 
	elsif
		array.each_slice(5).to_a
		if array.size % 5 <= 3
		array[-1] << array[0][-1] 
		elsif array.size % 5 <= 2
		array[-1] << array[1][-1]
		else
		array[-1] << array[2][-1]
		end
	end

end

p accountability(names_array)

=begin
1) What was the most interesting and most difficult part of 
this challenge?

I actually thought the refactoring was the most difficult part. I had
trouble finding methods that made my code more succinct and ultimately
feel like I did not figure out how best to refactor.

2) Do you feel you are improving in your ability to write pseudocode 
and break the problem down?

I think I am not improving at writing my initial pseudocode, but am
improving at figuring out a v.2 of pseudocode once I begin to dive in.
I know I need to develop a better instinct in my initial pseudocode and
hope that more practice will get me there!

3) Was your approach for automating this task a good solution? 
What could have made it even better?

I think my solution was okay. It feels like there must be a better way
to go about this though (that I believe likely involves methods I could
not find and did not use)

4) What data structure did you decide to store the accountability 
groups in and why?

An array because I saw no need to overcomplicate the data with keys (but
maybe this was an incorrect approach?)

5) What did you learn in the process of refactoring your initial 
solution? Did you learn any new Ruby methods?	

Refactoring isn't always easy and I still have work to do on my google
skills. It does also seem like rails could have really helped with this.
I am excited to begin to learn rails!

=end
