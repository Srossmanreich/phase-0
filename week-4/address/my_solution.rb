# Format an Address

# I worked on this challenge by myself.


# Your Solution Below

def make_address(street, city, state, zip)

address = "You live at " + street + ", in the beautiful city of " + city + ", " + state + ". Your zip is " + zip.to_s + "."
return address.to_s

end

make_address("633 Folsom St.","San Francisco","CA","94107")