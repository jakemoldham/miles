require "test_helper"

describe StaticPagesController do
  it "should get index" do
    get static_pages_index_url
    value(response).must_be :success?
  end

end
