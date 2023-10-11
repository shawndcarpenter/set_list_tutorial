require 'rails_helper'

RSpec.describe Artist do
  it {should have_many :songs}

  describe 'instance methods' do
    describe '#averae_song_length' do
      before :each do
        @muse = Artist.create!(name: 'Muse')
        @absolution = @muse.songs.create!(title: 'Absolution', length: 32, play_count: 235)
        @apocalypse = @muse.songs.create!(title: 'Apocalypse Please', length: 320, play_count: 11235)
        @muscle = @muse.songs.create!(title: 'Muscle Museum', length: 1, play_count: 1125)
        
      end
      it 'returns the average song length' do
        expect(@muse.average_song_length.round(2)).to eq(117.67)
      end
    end
  end
end