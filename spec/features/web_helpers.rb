def sign_in_and_play
  visit('/')
  fill_in(:Player_1, with: 'Mary')
  fill_in(:Player_2, with: 'Irbe')
  click_button 'Submit'
end
