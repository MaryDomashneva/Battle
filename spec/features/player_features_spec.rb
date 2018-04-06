require './lib/player'

feature 'Attacking' do
  scenario 'reduces dependent player points' do
    sign_in_and_play
    if page.has_link?('player_1')
      expect(page).to have_content 'Mary: 60HP'
      click_link('player_1')
      click_link 'OK'
      expect(page).not_to have_content 'Mary: 60HP'
    else
      expect(page).to have_content 'Irbe: 60HP'
      click_link('player_2')
      click_link 'OK'
      expect(page).not_to have_content 'Irbe: 60HP'
    end
  end
end

# # within(".comment") do
#   click_on("View")
# end
