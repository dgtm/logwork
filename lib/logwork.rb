require "logwork/version"
require 'ruby-units'
require 'httparty'
require 'pry'

module Logwork
  # Your code goes here...
  def self.log(issue, time_spent, comment='')
    auth = {:username => ENV['JIRA_USERNAME'], :password => ENV['JIRA_PASSWORD']}
    url = "https://agrian.atlassian.net:443/rest/api/2/issue/#{issue}/worklog"
    secs = Unit.new(time_spent).to('sec').scalar

    data = {comment: comment, started: DateTime.now.strftime('%FT%T.%L%z'),timeSpentSeconds: secs}.to_json
    request = HTTParty.post(url, body: data, headers: {'Content-Type' => 'application/json'}, basic_auth: auth)
    puts request
  end
end
