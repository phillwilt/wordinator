# 'lib/sinatra'
ENV['RACK_ENV'] ||= 'development'
require 'bundler'

Bundler.require :default, ENV['RACK_ENV'].to_sym

class Wordinator < Sinatra::Base
  def alphabetize(word)
    word.chars.sort_by(&:downcase).join
  end

  def anagram?(word1, word2)
    return false if (word1.size != word2.size)
    alphabetize(word1) == alphabetize(word2)
  end

  get '/anagram/:word1/:word2' do |word1, word2|
    content_type :json
    {
      word_1: word1.to_s,
      word_2: word2.to_s,
      anagram: anagram?(word1, word2)

    }.to_json
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end


