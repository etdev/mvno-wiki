require "rails_helper"

RSpec.feature "User views home page" do
  scenario "successfully" do
    visit root_path
    expect(page).to have_content(t("app_name"))
  end
end
