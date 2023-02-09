require "rails_helper"

RSpec.describe "related_instructions/index.html.erb", type: :view do
  it "displays title, sort order, hours and elective", :admin do
    related_instructions = create_list(:related_instruction, 1)
    related_instruction = related_instructions.first
    assign(:related_instructions, related_instructions)

    render

    expect(rendered).to have_selector("h2", text: "Related Instructions")

    expect(rendered).to have_columnheader("Title")
    expect(rendered).to have_columnheader("Sort Order")
    expect(rendered).to have_columnheader("Hours")
    expect(rendered).to have_columnheader("Elective")

    expect(rendered).to have_gridcell(related_instruction.id)
    expect(rendered).to have_gridcell(related_instruction.title)
    expect(rendered).to have_gridcell(related_instruction.hours.to_s)
    expect(rendered).to have_gridcell(related_instruction.elective)
  end
end