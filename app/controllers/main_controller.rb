class MainController < ApplicationController
require 'rss'
require 'open-uri'
  def index

  end

  def show
    if params[:search]
    @url = params[:search].split(' ')
    puts @url
  end
    @feeds = []
    if @url == nil
      puts "hello"
    else
        @url.each do |rss|
          puts @url
        @feed = RSS::Parser.parse(rss)
        @feeds << @feed
        puts @feeds.count

      end
    end
  end
end
