require "rails_helper"

feature "Visitor checks the weather" do
    before do
        visit root_path
    end
    
  scenario "sunny" do
    #setup
    

    #excercise
    fill_in "What's your zipcode?", with: "94702" 
    click_button "Is it going to rain?"

    #verify
    expect(page).to have_content("Sun's gonna be shinning!")
    expect(page).to have_content("No umbrella needed.")
  end
end