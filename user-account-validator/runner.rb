require_relative "user_account_validator"
require 'pry'

users = [
  {
    email: "doc@d7miners.com",
    username: "doc",
    name: "Doc"
  },
  {
    email: "grumpy@d7miners.com",
    username: "Grumpy",
    name: "Grumpy"
  },
  {
    email: "happy@d7miners.com",
    username: "happy",
    name: "Happy"
  },
  {
    email: "sleepy@d7miners.com",
    username: "Sleepy",
    name: "Sleepy"
  },
  {
    email: "bashful@d7miners.com",
    username: "Bashful",
    name: "Bashful"
  },
  {
    email: "sneezy@d7miners.com",
    username: "sneezy",
    name: "sneezy"
  },
  {
    email: "dopey@d7miners.com",
    username: "dopey",
    name: "Dopey"
  }
]

begin
  users.map { |user| UserAccountValidator.new(user) }
rescue StandardError => error
  binding.pry
end
