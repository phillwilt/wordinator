require_relative '../spec_helper'

describe 'Anagram response' do
  it 'responds' do
    get '/anagram/word/word'
    expect(last_response.status).to eq 200
  end

  it 'responds true to anagram' do
    get '/anagram/word/drow'
    res = JSON.parse(last_response.body)
    expect(res['anagram']).to eq true
  end

  it 'responds true to anagram' do
    get '/anagram/word/drow'
    res = JSON.parse(last_response.body)
    expect(res['anagram']).to eq true
  end

  it 'responds false to non-anagram' do
    get '/anagram/word/doubtful'
    res = JSON.parse(last_response.body)
    expect(res['anagram']).to eq false
  end
end
