require 'rails_helper'

feature "Creating todos" do
  scenario "create sucessfully" do
    visit new_todo_path
    within "form" do
      # save_and_open_page
      fill_in "todo_task", with:"HELLO!"
    end
    click_button "Create Todo"
    expect(page).to have_content "HELLO!"
    expect(page.current_path).to eq todos_path
  end
end