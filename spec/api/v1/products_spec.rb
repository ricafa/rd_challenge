require 'spec_helper'

describe Product, :type => :api do  
	it "list all" do 
	  get '/api/v1/products'
	  json = JSON.parse(last_response.body)
	  expect(json.count).to be > 4
	end 	

	it "returns one" do 
	  get '/api/v1/products/1'
	  json = JSON.parse(last_response.body)
	  expect(json["description"]).to eq('Product01') 
	end 	

	it "create" do
		post '/api/v1/products', :product => {
			description: "produto teste"
		}
		json = JSON.parse(last_response.body)
		expect(json['description']).to eq("produto teste")
	end

	it 'with invalid description' do
		post '/api/v1/products', :product => {
			description: ''
		}
		@prod = Product.create(description: '')
		json = JSON.parse(last_response.body)
		expect(json['description'][0]).to eq("can't be blank")
	end

	it 'with short description' do
		post '/api/v1/products', :product => {
			description: 'a'
		}
		@prod = Product.create(description: '')
		json = JSON.parse(last_response.body)
		expect(json['description'][0]).to eq("is too short (minimum is 2 characters)")
	end
	
	it "edit" do
		put '/api/v1/products/1', :product => {
			description: "Edited Product"
		}
		json = JSON.parse(last_response.body)
		expect(json['description']).to eq('Edited Product')
	end

	it 'delete' do
		delete '/api/v1/products/2'
		json = JSON.parse(last_response.body)
		expect(json['msg']).to eq('Product deleted successfully')
	end
end