class MainController < ApplicationController
require 'rss'
require 'open-uri'
require 'crack/xml'

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
        @main = Crack::XML.parse(rss)
        @feeds << @feed
        puts @feeds.count
        puts @feeds
      end
    end
  end
end
