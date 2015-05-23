class WelcomeController < ApplicationController
def index
    require 'rss'
        @rss = RSS::Parser.parse(open('http://www.emsc-csem.org/service/rss/rss.php').read, false).items[0..2]
  end