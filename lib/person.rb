# your code goes here
require 'pry'
class Person
  attr_accessor :bank_account, :happiness
  attr_reader :name
  
  def initialize(name, happiness = 8)
    @name = name
    @bank_account = 25
    @happiness = happiness
  end


  def happiness=(num)
    @happiness = num
    if @happiness > 10 
      "No one is that happy"
      @happiness = 10
    else @happiness < 0
      "Cheer up"
      @happiness = 0
    end
  end
end