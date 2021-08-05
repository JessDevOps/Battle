require '/Users/Student/Projects/Battle/app.rb'

feature "Testing Infrastructure" do
  scenario 'homepage to have content testing infrastructure works' do
    visit "/"
    expect(page).to have_text("Testing infrastructure works")
  end
end
