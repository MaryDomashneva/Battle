require './app'

describe 'the page contents', type: :feature do
  it 'filles players names' do
    sign_in_and_play
    expect(page).to have_content('Mary vs. Irbe')
  end

  feature 'Hit Points' do
    it 'shows Player_2 points' do
      sign_in_and_play
      expect(page).to have_content('Irbe: 60HP')
    end
  end

  feature 'Attacking' do
    scenario 'attacks Player_2' do
      sign_in_and_play
      click_link('player_1')
      expect(page).to have_content 'Mary attacked Irbe'
    end
    scenario 'attacks Player_1' do
      sign_in_and_play
      click_link('player_2')
      expect(page).to have_content 'Irbe attacked Mary'
    end
  end
end
