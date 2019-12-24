require 'rails_helper'

describe ArticlesController do
  describe '#index' do
    it 'should return success response' do
      get :index
      expect(response).to have_http_status(:ok)
    end
    it 'should return proper json' do
      create_list :article, 2
      get :index
      json = JSON.parse(response.body)
      json_data = json['data']
      expect(json_data.length).to eql(2)
      expect(json_data[0]['attributes']).to eq({
                                                 "title" => "My new title 1",
                                                 "content" => "My new content 1",
                                                 "slug" => "MY-SLUG-1"
                               })
      expect(json_data[1]['attributes']).to eq({
                                                 "title" => "My new title 2",
                                                 "content" => "My new content 2",
                                                 "slug" => "MY-SLUG-2"
                                             })
    end
  end
  describe '#show' do

  end
end