require 'rails_helper'

describe 'Book API', type: :request do
    it 'returns all books' do
        FactoryBot.create(:book, title: '1947', author: "George")
        FactoryBot.create(:book, title: "java", author: "Balagurusamy")
        get '/api/v1/books'
        expect(response).to have_http_status(:success)
        expect(JSON.parse(response.body).size).to eq(2)
    end
end