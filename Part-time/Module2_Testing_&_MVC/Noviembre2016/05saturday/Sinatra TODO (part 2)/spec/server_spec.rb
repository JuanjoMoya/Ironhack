require_relative "../server.rb"
require "rspec"
require 'rack/test'

describe "My Web App" do
  include Rack::Test::Methods


  def app
    Sinatra::Application
  end

  it "should load the tasks page" do
    get "/tasks"
    expect(last_response).to be_ok
  end

  it "should load the new task page from tasks page link" do
    get "/new_task"
    expect(last_response).to be_ok
  end

  it "should redirect from /new_task to /new_tasks when content equal to blanks" do
    post "/create_task", { :content => "" }
    expect(last_response.redirect?).to be(true)
    follow_redirect!
    expect(last_request.path).to eq("/new_task")
  end

  it "should redirect from /new_task to /tasks when content not equal to blanks" do
    post "/create_task", { :content => "542345" }
    expect(last_response.redirect?).to be(true)
    follow_redirect!
    expect(last_request.path).to eq("/tasks")
  end

end
