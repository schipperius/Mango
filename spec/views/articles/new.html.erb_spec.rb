require 'spec_helper'

describe "articles/new" do
  before(:each) do
    assign(:article, stub_model(Article,
      :title => "MyString",
      :introduction => "MyText",
      :image_url => "MyString",
      :description => "MyText",
      :footnotes => "MyText",
      :position => 1,
      :comments_count => 1
    ).as_new_record)
  end

  it "renders new article form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => articles_path, :method => "post" do
      assert_select "input#article_title", :name => "article[title]"
      assert_select "textarea#article_introduction", :name => "article[introduction]"
      assert_select "input#article_image_url", :name => "article[image_url]"
      assert_select "textarea#article_description", :name => "article[description]"
      assert_select "textarea#article_footnotes", :name => "article[footnotes]"
      assert_select "input#article_position", :name => "article[position]"
      assert_select "input#article_comments_count", :name => "article[comments_count]"
    end
  end
end
