Rails.application.routes.draw do
  

  

  

  namespace :v1 do
    resources :users do
      collection do
        post 'checklogin'
        post 'alreadyexist'
        post 'createuser'
      end
    end
  end
  namespace :v1 do
    resources :posts do
      collection do
        post 'createpost'
        post 'getuserposts'
        post 'getspecificanimal'
      end
    end
  end

  namespace :v1 do
    resources :comments do
      collection do
        post 'createcomment'
        post 'getcommentsofpost'
      end
    end
  end  

  namespace :v1 do
    resources :likes do
      collection do
        post 'createlike'
        post 'getlikescountofpost'
        post 'getlikesofpost'
        post 'deletelike'
        post 'getuserlikes'
      end
    end
  end  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
