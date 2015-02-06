require 'rails_helper'

RSpec.describe VotesController do
  let(:valid_attributes) {
    { issue: 'enviroment', how_vote: true }
  }

  let(:invalid_attributes) {
    { issue: nil, how_vote: nil }
  }

  describe 'GET index' do
    it 'has a 200 status code' do
      get :index
      expect(response.status).to eq 200
    end

    it ' renders the index' do
      get :index
      expect(response).to render_template('index')
    end



  end



end