#!/usr/bin/env ruby

require_relative "../lib/api_communicator.rb"
require_relative "../lib/command_line_interface.rb"
require_relative "../lib/drawing.rb"

def menu
  choice = get_user_choice
  case choice
  when "1"
    character = get_character_from_user
    show_character_movies(character)
  when "2"
    movie = get_movie_from_user
    show_movie_crawl(movie)
  else
    puts "Please enter 1 or 2"
    menu
  end
end

welcome
menu
