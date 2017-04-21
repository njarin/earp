class IndexController < ApplicationController
  def index
    respond_to do |format|
      p 'hit this'
      format.html
      format.js
    end
  end
end
