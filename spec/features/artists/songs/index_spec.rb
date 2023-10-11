require 'rails_helper'

RSpec.describe 'Artists songs index' do
  before :each do
    @muse = Artist.create!(name: 'Muse')
    @absolution = @muse.songs.create!(title: 'Absolution', length: 32, play_count: 235)
    @apocalypse = @muse.songs.create!(title: 'Apocalypse Please', length: 320, play_count: 11235)
  end
  it 'shows all the titles of the songs for the artist' do

    visit "/artists/#{@muse.id}/songs"

    expect(page).to have_content(@absolution.title)
    expect(page).to have_content(@apocalypse.title)
  end

  it 'links to each songs show page' do
    visit "/artists/#{@muse.id}/songs"

    click_on @absolution.title

    expect(current_path).to eq("/songs/#{@absolution.id}")
  end

  it 'shows the average song length for the artist' do
    visit "/artists/#{@muse.id}/songs"

    expect(page).to have_content("Average Song Length for Muse: 176")
  end
end