Knewtoefl::Application.routes.draw do

  devise_for :users

  get "join_us" => "join#join_us", :as => 'join'
  get 'requirements' => 'home#requirements'
  get 'syllabus' => 'home#syllabus'
  get 'career' => 'home#career'
  get 'success' => 'home#success'
  get 'err' => 'home#err'
  get 'roles' => 'home#roles'
  get 'search' => 'guans#search'
  get 'yan' => 'companies#yan'#
  get 'asuccess' => 'recs#success'
  get 'tsuccess' => 'recs#tsuccess'
  get 'zsearch' => 'recs#search'    #公司搜索应聘者简历
  get 'tou' => 'recs#toudi'         #用户投递简历create
  get 'toudi' => 'guans#toudi'      #查看投递简历信息
  get 'terror' => 'recs#error'      #重复投递简历错误提示

  resources :customers

  devise_for :admins

  resources :attachments

  resources :zguans

  resources :recs

  resources :companies

  resources :cooperators



  resources :assets

  resources :reports

  resources :meets
  
  resources :projects

  resources :teachers

  resources :cases

  resources :workbases

  resources :notices

  resources :checkouts

  resources :particulars

  resources :skills

  resources :askills

  resources :guans

  namespace :admin do
    root :to => 'teachers#index'
    resources :companies
    resources :recs
    resources :teachers do
      member do
        put 'move_up'
        put 'move_down'
      end
    end
    resources :cases do
      member do
        put 'move_up'
        put 'move_down'
      end
    end
    resources :descs
    resources :meets
    resources :reports
    resources :checkouts
    resources :notices
    resources :projects
    resources :cooperators
    resources :customers
    resources :groups
    resources :workbases
    root :to => 'teachers#index'
    
  end

  root :to => 'home#index', :as => 'root'
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
