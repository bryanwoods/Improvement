ActionController::Routing::Routes.draw do |map|
  map.resources :no_votes

  map.resources :polls do |polls|
    polls.resources :yes_votes
    polls.resources :no_votes
  end

  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.session '/session', :controller => 'sessions', :action => 'create'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.resources :users
  map.resource :session

  map.root :controller => "polls", :action => "index"

  map.connect ':controller/:action/:id', :id => nil if RAILS_ENV == 'development'
end