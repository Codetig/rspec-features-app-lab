require "rails_helper"

feature "Visitor checks the weather" do
    
  scenario "sunny" do
    #setup
    visit root_path

    #excercise
    fill_in "What's your zipcode?", with: "94702" 
    click_button "Is it going to rain?"

    #verify
    expect(page).to have_content("Sun's gonna be shinning!")
    expect(page).to have_content("No umbrella needed.")
  end

  scenario "rainy" do
    #setup
    visit root_path

    #excercise
    fill_in "What's your zipcode?", with: "11420" 
    click_button "Is it going to rain?"

    #verify
    expect(page).to have_content("Oh the pouring rain!")
    expect(page).to have_content("Grab your umbrella!")
  end


end