def start_rps
  visit '/'
  fill_in 'name', with: 'Andy'
  click_button 'Submit'
  click_button 'Rock Paper Scissors'
end

def two_player_sign_in
  visit '/'
  fill_in 'name', with: 'Player1'
  click_button 'Submit'
  visit '/'
  fill_in 'name', with: 'Player2'
  click_button 'Submit'
end
