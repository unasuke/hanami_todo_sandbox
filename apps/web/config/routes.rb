# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }

get '/users', to: 'users#index'
get '/sessions/new', to: 'sessions#new'
post '/sessions', to: 'sessions#create'
