# U2.W4: Create Accountability Groups


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

=begin

Input: Array with names of cohort members
Output: For each array, accountability groups of four, with extra people distributed

Steps:
Write driver code to find the number of elements in each array, and test whether each is divisible by four
Write driver code to print groups when they are established, to see whether they are in groups of four or more

Check to see whether the total number of elements in the array is divisible by four
If divisible by four, then randomly sort into groups of four
If not divisible by four, then sort into groups of four until last group
Last group of >4 will go into its own array.
If members in the array =3, they will be their own group
If members in the array are <3, they will be pushed into established arrays

=end

# 3. Initial Solution

def account(a)
		groups = a.shuffle.each_slice(4).to_a
    p groups
		if groups[-1].length == 1
			groups[0] << groups[-1]
			groups.inspect
		end
end

a = [ "Ken Sin", "Dinesh Rai", "Charu Sharma", "David Kerr", "Chantelle Turnbull", "Jake Huhn", "Samuel Arkless",
			"Kai Prout", "Indigo", "Timothy McClung", "Judy Jow", "Danielle Adams", "John P Quigley", "Adeoye Jaiyeola",
			"Lasse Sviland", "Jessica Tatham", "Kevin Zhou", "Kennedy Bhagwandeen", "Jason Matney", "Gregory Knudsen",
			"Natalie Baer", "Nick Giovacchini"]

# initial driver:
print account(a)

#############################
# 4. Refactored Solution

def account(group)
		group = group.shuffle.each_slice(4).to_a
		if group[-1].length != 4
		extra = group.shift
#I'd like to make my code more flexible, so it can support different length groups, can loop in extra people and prints in a clearer way.

end

a = [ "Ken Sin", "Dinesh Rai", "Charu Sharma", "David Kerr", "Chantelle Turnbull", "Jake Huhn", "Samuel Arkless",
			"Kai Prout", "Indigo", "Timothy McClung", "Judy Jow", "Danielle Adams", "John P Quigley", "Adeoye Jaiyeola",
			"Lasse Sviland", "Jessica Tatham", "Kevin Zhou", "Kennedy Bhagwandeen", "Jason Matney", "Gregory Knudsen",
			"Natalie Baer", "Nick Giovacchini"]




# 1. DRIVER TESTS GO BELOW THIS LINE








# 5. Reflection 





