require './app'

describe 'the page contents', type: :feature do
  it 'filles players names' do
    sign_in_and_play
    expect(page).to have_content('Mary vs. Irbe')
  end
  it 'shows Player_2 Hit Points' do
    sign_in_and_play
    expect(page).to have_content('Irbe: 60HP')
  end
end
