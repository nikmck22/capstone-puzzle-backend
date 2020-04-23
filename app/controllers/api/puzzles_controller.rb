class Api::PuzzlesController < ApplicationController

  def index
    render "index.json.jb"
  end
end
