require 'rails_helper'

RSpec.describe Movie, type: :model do
  context 'when creating a movie' do
    let(:movie) {build :movie}
    it 'should be vaild movie with all attributes' do
      expect(movie.valid?).to eq(true)
    end
  end
  
  # describe "public methods" do
    # let(:m) {create :movie}
    # it 'should return topmovie' do
      # debugger
      # expect(m.topmovie).to eq('top guns')
    # end
  # end
  describe "#image_url" do
    let(:movie) { Movie.new }
    let(:image) { instance_double(ActiveStorage::Attached::One) }
    let(:blob) { instance_double(ActiveStorage::Blob) }
    
    context "when an image is attached" do
      let(:attached) { true }

    end

    context "when no image is attached" do
      let(:attached) { false }

      it "returns an empty string" do
        expect(movie.image_url).to eq('')
      end
    end
  end
end
  

