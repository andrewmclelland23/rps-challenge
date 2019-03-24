feature 'Multiplayer Rock Paper Scissors' do
  scenario "Visit homepage and sign in twice, choose p1 and p2 from list" do
    two_player_sign_in
    click_button 'Rock Paper Scissors'
    select 'player1', from: 'player_1_select'
    select 'player2', from: 'player_2_select'
    expect(page).to have_content 'Player1 vs Player2'
  end
end
