puts "How much is the bill?"
bill = gets
# change bill to a float to calculate later
bill = bill.to_f
puts "The bill is $#{bill}"

# calculate a 20% tip

tip = bill.to_f * 0.2
# round to 2 decimals otherwise you'll get 16
tip = tip.round(2)

puts "\n\nThe tip is $#{tip.to_f}."

puts "\n\n"

puts "How many people are there?"
people = gets
people = people.to_i # can't have floating numbers... unless there's a midget with you
individual_tab = (bill + tip) / people
individual_tab = individual_tab.round(2)

puts "\n\nSo there's #{people} of you. Each of you pay #{individual_tab}."
