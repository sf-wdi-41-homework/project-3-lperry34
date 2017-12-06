class MainController < ApplicationController
require 'rss'
require 'open-uri'
  def index

  end

  def show
    @url = params[:search]
    if @url == nil
      puts "hello"
    else
        open(@url) do |rss|
        @feed = RSS::Parser.parse(rss)
      end
    end
  end
end
