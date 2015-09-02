class SearchController < ApplicationController

   def index
    @results = Search.for(params[:keyword])
    @display = ""
    if @results == []
      @display = "No results matching that query."
    elsif @results.length == 1
      redirect_to "/words/#{@results.first.id}"
    else
      @display = "#{@results.flatten}"
    end
   end

  def show
  end

end
