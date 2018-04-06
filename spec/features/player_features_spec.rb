require './lib/player'

feature 'Attacking' do
  scenario 'reduces Player_2 points by 10' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Irbe: 60HP'
    expect(page).to have_content 'Irbe: 50HP'
  end
end
