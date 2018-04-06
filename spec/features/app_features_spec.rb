require './app'

describe 'the page contents', type: :feature do
  it 'filles players names' do
    sign_in_and_play
    expect(page).to have_content('Mary vs. Irbe')
  end

  feature 'Hit Points' do
    it 'shows player_2 points' do
      sign_in_and_play
      expect(page).to have_content('Irbe: 60HP')
    end
  end

  feature 'Attacking' do
    scenario 'attacks player' do
      sign_in_and_play
      if page.has_link?('player_1')
        click_link('player_1')
        expect(page).to have_content 'Mary attacked Irbe'
      else
        click_link('player_2')
        expect(page).to have_content 'Irbe attacked Mary'
      end
    end
  end
end
