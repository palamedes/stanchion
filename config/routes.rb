Rails.application.routes.draw do

  devise_for  :users,
              :path => '',
              :path_names => {  :sign_in =>       'login',
                                :sign_out =>      'logout',
                                :sign_up =>       '',
                                :registration =>  'register',
                                :edit =>          'edit',
                                :cancel =>        'cancel',
                                :confirmation =>  'verification'  }


  post :foo, to: "home#bar", path: '/baz/:id/floop'
  get :test, to: "home#test"

  root "home#index"

end
