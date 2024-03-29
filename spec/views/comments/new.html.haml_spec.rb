require 'rails_helper'

RSpec.describe "comments/new", :type => :view do
  before(:each) do
    assign(:comment, Comment.new(
      :name => "MyString",
      :content => "MyText"
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "input#comment_name[name=?]", "comment[name]"

      assert_select "textarea#comment_content[name=?]", "comment[content]"
    end
  end
end
