require_relative '../spec_helper'

describe 'Anagram response' do
  it 'responds' do
    get '/anagram/word/word'
    expect(last_response.status).to eq 200
  end
  it 'responds true to anagram' do
    get '/anagram/word/drow'
    expect(last_response.status).to eq 200
  end
end
