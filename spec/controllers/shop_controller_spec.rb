require 'rails_helper'

RSpec.describe ShopController, :type => :controller do
    context"check Http status" do 
        let(:shop_name) {'Banan'}
        context "get the index" do    
            it "#index" do
                get :index
                expect(response).to have_http_status(200)
            end
        end
 
        context "create a new user" do    
            it "#create" do
                post :create, {shop: {shop_name: shop_name}, format: 'json'}
                expect(response).to have_http_status(201)
            end
        end
        context "update a user info" do
            let(:shop) {Shop.new(shop_name: shop_name)}
            it "#update" do
                shop.save
                put :update, {user: {shop_name: shop_name}, format: 'json', id: user.id}
                expect(response).to have_http_status(200)
            end
        end
        context"delete a user"do
            let(:shop) {User.new(shop_name: shop_name)}
            it "#destroy" do
                shop.save
                delete :destroy, {format: 'json', id: user.id}
                expect(response).to have_http_status(204)
            end
        end
    end 
end
