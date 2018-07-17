# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# defaults format: :json do
#   resources :anyname
# end
constraints subdomain: /\Aapi/ do
  mount_devise_token_auth_for 'User', at: 'auth'
  scope module: 'api' do
    namespace :v1 do

    end
  end
end