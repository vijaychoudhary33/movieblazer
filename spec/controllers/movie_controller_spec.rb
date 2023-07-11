require 'rails_helper'
RSpec.describe MoviesController, type: :controller  do
  describe 'Get index' do
    let(:movie) {create :movie}
    let(:user) {create :user}
      it 'assigns @movies' do
        sign_in(user)
        get :index
        expect(assigns(:movies)).to eq([movie])
      end
  end
  describe 'GET show' do
    let(:user) {create :user}
    let(:movie) {create :movie}
    it 'assigns @movie' do
      sign_in(user)
      get :show, params: { id: movie.id }
      expect(assigns(:movie)).to eq(movie)
    end
    
    it 'renders the show template' do
      movie = create(:movie)
      sign_in(user)
      get :show, params: { id: movie.id }
      expect(response).to render_template(:show)
    end
  end

  # describe 'GET new' do
  #   let(:user) {create :user}
  #   it 'assigns a new movie @movie' do
  #     sign_in(user)
  #     get :new
  #     expect
  #   end
  # end

  describe 'GET edit' do
    let(:user) {create :user}
    let(:movie) {create :movie}
    it 'assigns the requested movie to @movie' do
      sign_in(user)
      get :edit, params: { id: movie.id }
      expect(assigns(:movie)).to eq(movie)
    end
    it 'renders the edit template' do
      sign_in(user)
      get :edit, params: { id: movie.id }
      expect(response).to render_template(:edit)
    end
  end
  # describe 'PATCH update' do
  #   let(:user) {create :user}
  #   let(:movie) {create :movie}

  #   context 'with valid attributes' do
  #   end
  # end


end