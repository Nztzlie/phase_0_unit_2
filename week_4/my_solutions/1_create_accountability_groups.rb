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




# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE


array_cicadas = 
["Adeoye Jaiyeola",
"Brittaney Staton", 
"Chantelle Turnbull",
"Charu Sharma",
"Danielle Adams", 
"David Kerr",
"Dinesh Rai",
"Gregory Knud", 
"Ian Greenough", 
"Jake Huhn",
"Jason Matney",
"Jessica Tatham", 
"John Quigley",
"Judy Jow",
"Justin Lee", 
"Kai Prout",
"Ken Sin", 
"Kennedy Bhagwandeen", 
"Kevin Zhou", 
"Lasse Sviland", 
"Natalie Baer", 
"Nick Giovacchini", 
"Samuel Arkless", 
"Timothy McClung"] # 24 % 4 = 0

array_fiddler_crabs = [ 
'Adam Godel ',
'Adrian Pask ',
'Brendan Scarano' ,
'Christine Feaster' ,
"Howard O'Leary ",
'Insung Lee ',
'Jared Rader ',
'Johnathan Weisner' ,
'Julia Himmel ',
'Justin Phelps ',
'Keaty Gross ',
'Kenneth Uy ',
'Lawrence Manfredi ',
'Neal Fennimore ',
'Payam Pakmanesh ',
'Philip London ',
'Ruben Osorio ',
'Ryan Rebo ',
'Sahan Pitigala ',
'Shaun McGeever ',
'Timmy Huang ',
'Tyler Adams'  ] # 22 % 4 = 2

array_dragonflies = [ 
'Andrew Larson',
'Andrew Younge' ,
'Caroline Artz ',
'Dan Armstrong ',
'Elizabeth Cruz ',
'Elizabeth Kaplan ',
'Erik Olsen ',
'Fabi Castillo', 
'George Amolsch', 
'Guido Medina ',
'Jason Chodera ',
'Justin Stewart ',
'Kevin Kanhirun ',
'Lars Berg ',
'Matthew Berns', 
'Matthew Didier', 
'Michael Hamel ',
'Milan Grubnic ',
'Mohammad Abdeljalil ',
'Nate Kandler ',
'Nicholas Eich ',
'Oliver Treadwell', 
'Paige Crum ',
'Robb Hong ',
'HyungMin ',
'SANTRECE ROSS ',
'Syed raza a. Jafri '] # 27 % 4 = 3 

print accountability_group(array_cicadas)
print accountability_group(array_fiddler_crabs)
print accountability_group(array_dragonflies)






# 5. Reflection 





