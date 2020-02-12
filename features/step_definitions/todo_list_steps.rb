Given("I visit the landing page") do
    @page = Landing.new
    @page.load
end
  
Then("I should see no items in todo list") do
    expect(@page.item_list.text).to be_empty
end

Then("item input is empty") do
    expect(@page.item_input.text).to be_empty
end

Given("The user inputs {string}") do |string|
    @page.item_input.set string
end
  
Given("clicks on add item button") do
    @page.save_button.click
end
  
Then("User should see list is not empty") do
    expect(@page.item_list.text).not_to be_empty
end

Then("has an item row called {string}") do |string|
    expect(@page.item_list.text).to include(string)
end

Then("click on clear item button") do
    @page.clear_button.click
end

Given("The user add {string} to the list") do |string|
    @page.item_input.set string
    @page.save_button.click
end

Given("The user deletes first item using trash button") do
    @page.first(".list-group-item").find(".text-danger").click
end

Given("The user edit first item using edit button") do
    @page.first(".list-group-item").first(".text-success").click
end

Then("User should see on the input {string}") do |string|
    expect(@page.item_input.value).to eq(string)
end

Given("The user edit last item using edit button") do
    @page.all(".list-group-item").last.find(".text-success").click
  end

Given("The user deletes last item using trash button") do
    @page.all(".list-group-item").last.find(".text-danger").click
end

Given("The user edit middle item using edit button") do
   @prom = ((@page.all(".list-group-item").length)/2.0).round.to_i
   @page.all(".list-group-item").at(@prom-1).find(".text-success").click
end

Given("The user deletes middle item using trash button") do
    @prom = ((@page.all(".list-group-item").length)/2.0).round.to_i
    @page.all(".list-group-item").at(@prom-1).find(".text-danger").click
end

Then("User should see list is empty") do
    expect(@page.item_list.text).to be_empty
  end