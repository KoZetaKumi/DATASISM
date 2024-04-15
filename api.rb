require 'sinatra'

get '/api/features' do
  # Fetch data from your database
  # ...

  content_type :json
  { data: data }.to_json
end

post '/api/features/:id/comments' do
  feature_id = params[:id]
  body = params[:body]

  # Persist the comment to your database
  # ...

  status 201
  content_type :json
  { message: 'Comment created' }.to_json
end
