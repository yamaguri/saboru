class SaboriController < ApplicationController
  def index
    @today = Time.current
    @result = Saboru.check(@today)
  end
end
