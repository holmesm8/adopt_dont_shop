require 'rails_helper'

RSpec.describe "pets index page", type: :feature do
  context "as a visitor" do
    it "can see the names of all pets" do

      pet1 = Pet.create(image: "http://https://cdn2-www.dogtime.com/assets/uploads/2011/03/puppy-development.jpg",
                        name: "Athena",
                        description: "butthead",
                        age: "1",
                        sex: "female",
                        adoptable: "yes"
                        )

      pet2 = Pet.create(image: "https://s.abcnews.com/images/Lifestyle/puppy-ht-3-er-170907_16x9_992.jpg",
                        name: "Odell",
                        description: "good dog",
                        age: "4",
                        sex: "male",
                        adoptable: "yes"
                        )
      visit "/pets"

      expect(page).to have_content(pet1.name)
      expect(page).to have_content(pet2.name)
    end
  end
end
