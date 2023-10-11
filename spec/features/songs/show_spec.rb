require 'rails_helper'

RSpec.describe 'the songs show page' do
  it 'displays song title' do
    artist = Artist.create(name: 'Talking Heads')
    song = artist.songs.create!(title: "Psycho Killer", length: 208, play_count: 23456)
    song_2 = artist.songs.create!(title: "Life During Wartime", length: 301, play_count: 123)
    
    visit "/songs/#{song.id}"

    expect(page).to have_content(song.title)
    expect(page).to_not have_content(song_2.title)
  end

  it 'displays the name of artist for the song' do
    artist = Artist.create(name: 'Talking Heads')
    song = artist.songs.create!(title: "Psycho Killer", length: 208, play_count: 23456)
    song_2 = artist.songs.create!(title: "Life During Wartime", length: 301, play_count: 123)
    
    visit "/songs/#{song.id}"
    save_and_open_page
    expect(page).to have_content(artist.name)
  end
end