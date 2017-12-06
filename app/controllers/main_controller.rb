class MainController < ApplicationController
require 'rss'
require 'open-uri'
  def index

  end

  def show
    @url = 'http://feeds.feedburner.com/DrudgeReportFeed'
    open(@url) do |rss|
      @feed = RSS::Parser.parse(rss)
    end
  end
end
