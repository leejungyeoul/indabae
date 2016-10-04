Rails.application.routes.draw do
  get 'home/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'
    get 'home/index'=>"home#index"
  get 'home/write'=>"home#write"
  post 'home/write_end'=>"home#write_end"
  post '/write_end'=>"home#write_end"
    post '/write_end2'=>"home#write_end2"
        get '/write_end2'=>"home#write_end2"
  get 'home/list'=> "home#list"
  
  get 'destroy/:post_id'=> "home#destroy"
  
  get 'destroy1/:post_id'=> "home#destroy1"
  get 'destroy2/:post_id'=> "home#destroy2"
  get 'destroy3/:post_id'=> "home#destroy3"
  get 'destroy4/:post_id'=> "home#destroy4"
  
  get 'update_view/:post_id'=>"home#update_view"
  get 'seee/:post_id'=>"home#seee"
  post 'siljae_update/:post_id'=>"home#siljae"
  
  
    # root 'home#index'
  get 'home/three1' => 'home#three1'
  get 'home/galleryModal1'=>"home#galleryModal1"
    get 'home/galleryModal2'=>"home#galleryModal2"
      get 'home/galleryModal3'=>"home#galleryModal3"
        get 'home/galleryModal4'=>"home#galleryModal4"
        
  post 'home/upload1'=>"home#upload1"      
  post 'home/upload2'=>"home#upload2"   
  post 'home/upload3'=>"home#upload3" 
  post 'home/upload4'=>"home#upload4"  
  
  post '/write_email'=>"home#write_email"
    get '/write_email'=>"home#write_email"
    
    
  get '/talk'=>"home#talk"
    post '/talk_write'=>"home#talk_write"
  get '/talk_list'=>"home#talk_list"
  get '/talk_list2'=>"home#talk_list2"
  get '/talk_detail/:post_id'=>"home#talk_detail" 
  post '/talk_detail/:post_id'=>"home#talk_detail"
  get '/destroy_talk/:post_id'=> "home#destroy_talk"
  get '/update_talk/:post_id'=> "home#update_talk"
  
  
  get '/intro'=>"home#intro"
    
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
