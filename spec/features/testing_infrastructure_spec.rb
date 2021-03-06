require '/Users/manu/Projects/Battle/app.rb'
# require '/Users/Student/Projects/Battle/views/index.erb'

feature "Testing Infrastructure" do
  scenario 'homepage to have content testing infrastructure works' do
    visit "/"
    expect(page).to have_text("Testing infrastructure works")
  end

  scenario 'two players can add their names for a personalised game' do
    visit "/"
    fill_in('player_1', with: 'Jess')
    fill_in('player_2', with: 'Manu')
    click_on('Submit')
    expect(page).to have_content "Jess vs. Manu"
  end


# get '/names' do
#   @player_1 = params[:player_1]
#   @player_2 = params[:player_2]
#   erb :index
end