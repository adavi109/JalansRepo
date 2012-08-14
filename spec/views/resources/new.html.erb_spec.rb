require 'spec_helper'

describe "resources/new" do
  before(:each) do
    assign(:resource, stub_model(Resource,
      :name => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new resource form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => resources_path, :method => "post" do
      assert_select "input#resource_name", :name => "resource[name]"
      assert_select "input#resource_user_id", :name => "resource[user_id]"
    end
  end
end
