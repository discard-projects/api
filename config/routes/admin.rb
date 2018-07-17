# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# defaults format: :json do
#   resources :anyname
# end
constraints subdomain: /\Aapa/ do
  mount_devise_token_auth_for 'Admin', at: 'auth'
  scope module: 'admin' do
    resources :users
  end
end
