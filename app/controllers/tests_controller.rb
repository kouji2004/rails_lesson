class TestsController < ApplicationController
  def new
    @test = Test.new
  end

  def index
    @tests = Test.all
  end

end
