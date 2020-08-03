require 'pry'
  #
  # This is the array we will be passing into the remove_strawberry method
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_ice_cream_flavors: ["chocolate", "vanilla"]
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

# def remove_strawberry(contacts)
#   contacts.each do |person, contact_details_hash|
#     if person == "Freddy Mercury"
#       contact_details_hash.each do |attribute, data|
#         if attribute == :favorite_ice_cream_flavors
#           data.delete_if {|ice_cream| ice_cream == "strawberry"}
#         end
#       end
#     end
#   end
# end

# remove_strawberry(contacts)

def remove_strawberry(contacts)
  contacts.each do |person, contact_details_hash|
    if person == "Freddy Mercury"
      contact_details_hash.each do |attribute, data|
        if attribute == :favorite_ice_cream_flavors
          data.each do |ice_cream|
            if ice_cream == "strawberry"
              data.delete("strawberry")
            end
          end
        end
      end
    end
  end
  # binding.pry
end




  # iterate directly over "Freddy Mercury"
# def remove_strawberry(contacts)
#   contacts["Freddy Mercury"].each do |data_group, data|
#     if data == "strawberry"
#       data.delete"strawberry"
#       contacts
#     end
#   binding.pry
# end
# end
