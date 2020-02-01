# RSpec.describe "pets show page", type: :feature do
#   context 'as a visitor' do
#     it "can update a pet" do
#       shelter1 = Shelter.create(name: "Mike's Shelter",
#                                 address: "1331 17th Street",
#                                 city: "Denver",
#                                 state: "CO",
#                                 zip: "80202")
#
#       shelter2 = Shelter.create(name: "Meg's Shelter",
#                                 address: "150 Main Street",
#                                 city: "Hershey",
#                                 state: "PA",
#                                 zip: "17033")
#
#       pet1 = Pet.create!(image: "https://cdn2-www.dogtime.com/assets/uploads/2011/03/puppy-development.jpg",
#                         name: "Athena",
#                         description: "butthead",
#                         age: "1",
#                         sex: "female",
#                         adoptable: "yes",
#                         shelter_id: shelter1.id
#                         )
#
#       pet2 = Pet.create!(image: "https://s.abcnews.com/images/Lifestyle/puppy-ht-3-er-170907_16x9_992.jpg",
#                         name: "Odell",
#                         description: "good dog",
#                         age: "4",
#                         sex: "male",
#                         adoptable: "yes",
#                         shelter_id: shelter2.id
#                         )
#
#       visit "/pets/#{pet_1.id}"
#
#       click_link "Update Pet"
#       expect(current_path).to eq("/pets/#{pet_1.id}/edit")
#
#       fill_in 'age', with: "10"
#       fill_in 'description', with: "old boy"
#
#       click_on "Save changes"
#       expect(current_path).to eq("/pets/#{pet_1.id}")
#       expect(page).to have_content("10")
#       expect(page).to have_content("old boy")
#     end
#   end
# end
