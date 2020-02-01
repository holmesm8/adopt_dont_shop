require 'rails_helper'

RSpec.describe "shelters index page", type: :feature do
  context "as a visitor" do
    it "can click a link to create a pet" do
      shelter1 = Shelter.create!(name: "Mike's Shelter",
                                address: "1331 17th Street",
                                city: "Denver",
                                state: "CO",
                                zip: "80202")

      visit "/shelters/#{shelter1.id}/pets"
      click_link "Create Pet"

      expect(current_path).to eq("/shelters/#{shelter1.id}/pets/new")

      fill_in 'Image', with: 'https://www.readersdigest.ca/wp-content/uploads/sites/14/2013/03/6-facts-to-know-before-owning-a-puppy.jpg'
      fill_in 'Name', with: 'Scruffy'
      fill_in 'Description', with: 'curious'
      fill_in 'Age', with: '2'
      fill_in 'Sex', with: 'male'

      click_on 'Create Pet'

      expect(current_path).to eq("/shelters/#{shelter1.id}/pets")
      expect(page).to have_content("Scruffy")
      expect(page).to have_content("curious")
      expect(page).to have_content("2")
      expect(page).to have_content("male")
    end
  end
end
