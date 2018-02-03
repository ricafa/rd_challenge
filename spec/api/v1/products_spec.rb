require 'spec_helper'

describe '/api/v1/products', :type => :api do  
	before do 
		@product = Product.create(description: 'Novo Produto')
		@product.save!
	end

	it "list all products" do 
	  get '/api/v1/products'
	  json = JSON.parse(last_response.body)
	  expect(json.count).to be > 4
	end 	

	it "returns a single product" do 
	  get '/api/v1/products/1'
	  json = JSON.parse(last_response.body)
	  expect(json["description"]).to eq('Product01') 
	end 	

	it "creating a product" do
		post '/api/v1/products', :product => {
			description: "produto teste"
		}
		json = JSON.parse(last_response.body)
		expect(json['description']).to eq("produto teste")
	end
	
	it "editing a product" do
		put '/api/v1/products/1', :product => {
			description: "Edited Product"
		}
		json = JSON.parse(last_response.body)
		expect(json['description']).to eq('Edited Product')
	end

	it 'delete the product' do
		delete '/api/v1/products/2'
		json = JSON.parse(last_response.body)
		expect(json).to eq(0)
	end
	
end