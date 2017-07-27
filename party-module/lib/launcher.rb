require_relative 'code'
require 'pry'

class Launcher
  include PartyGoer
  extend PartyGoer
end

alex = Launcher.new

alex.drink
puts alex.drink_count
alex.sing
dave = Launcher.invited?
puts dave.inspect

begin
  puts eqeqeqe
rescue alex.cause_havoc
end
