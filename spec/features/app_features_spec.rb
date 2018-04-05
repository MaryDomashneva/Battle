require './app'

describe "the page contents", type: :feature do
  it "filles players names" do
    visit('/')
    fill_in(:Player_1, with: 'Mary')
    fill_in(:Player_2, with: 'Irbe')
    click_button 'Submit'
    expect(page).to have_content('Mary vs. Irbe')
  end
end
