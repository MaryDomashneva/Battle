describe "the page contents", type: :feature do
  it "displays 'Hello world!'" do
    visit '/'
    expect(page).to have_content 'Hello world!'
  end
  run! if app_file == $0
end
