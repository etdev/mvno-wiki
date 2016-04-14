require "rails_helper"

RSpec.feature "User searches for plans from the home page" do
  scenario "by phone" do
    visit root_path
    mvno = create(:mvno)
    phone = create(:phone)
    plan = create(:plan, carrier: carrier)

    select phone.name, from: "phone-select"
    select t("homes.show.network-search.no-selection"), from: "network-select"
    select t("homes.show.data-search.no-selection"), from: "data-select"

    click_link t("homes.show.submit")

    expect(page).to have_css("[data-role='phone']", text: plan.name)
  end
end
