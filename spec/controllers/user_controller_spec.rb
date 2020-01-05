require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
    context"check Http status" do 
        let(:first_name) {'ming'}
        let(:last_name) {'jai'}
        let(:ages) {18}
        let(:gender) {'male'}
        context "get the index" do    
            it "#index" do
                get :index
                expect(response).to have_http_status(200)
            end
        end
 
        context "create a new user" do    
            it "#create" do
                post :create, {user: {first_name: first_name, last_name: last_name, ages: ages, gender: gender}, format: 'json'}
                expect(response).to have_http_status(201)
            end
        end
        context "update a user info" do
            let(:user) {User.new(first_name: first_name, last_name: last_name, ages: ages, gender: gender)}
            it "#update" do
                user.save
                put :update, {user: {first_name: first_name, last_name: last_name, ages: ages, gender: gender}, format: 'json', id: user.id}
                expect(response).to have_http_status(200)
            end
        end
        context"delete a user"do
            let(:user) {User.new(first_name: first_name, last_name: last_name, ages: ages, gender: gender)}
            it "#destroy" do
                user.save
                delete :destroy, {format: 'json', id: user.id}
                expect(response).to have_http_status(204)
            end
        end

        context"count the number of users"do
            it "#count" do
                get :count
                expect(response).to have_http_status(200)
            end
        end
    end 
end
