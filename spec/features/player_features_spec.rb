require './lib/player'

feature 'Attacking' do
  scenario 'reduces Player_2 points by 10' do
    sign_in_and_play
    click_link('player_1')
    # within("#player_1") do
    #   click_on("Attack")
    # end
    click_link 'OK'
    expect(page).not_to have_content 'Irbe: 60HP'
    expect(page).to have_content 'Irbe: 50HP'
  end
  scenario 'reduces Player_1 points by 10' do
    sign_in_and_play
    click_link('player_2')
    # within("#player_2") do
    #   click_on("Attack")
    # end
    click_link 'OK'
    expect(page).not_to have_content 'Mary: 60HP'
    expect(page).to have_content 'Mary: 50HP'
  end
end

# # within(".comment") do
#   click_on("View")
# end
