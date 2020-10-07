Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get 'posts/after' => 'posts#after'
get 'posts/new' => 'posts#new'

post 'tweets' => 'tweets#create'

get 'quizzes/top' => 'quizzes#top'
get 'quizzes/tirionea_top' => 'quizzes#tirionea_top'

get 'quizzes/select' => 'quizzes#select'

get 'quizzes/tirionea_1' => 'quizzes#tirionea_1'
get 'quizzes/tirionea_2' => 'quizzes#tirionea_2'
get 'quizzes/tirionea_3' => 'quizzes#tirionea_3'
get 'quizzes/tirionea_4' => 'quizzes#tirionea_4'
get 'quizzes/tirionea_5' => 'quizzes#tirionea_5'

get 'quizzes/answer_1' => 'quizzes#answer_1'
get 'quizzes/answer_2' => 'quizzes#answer_2'
get 'quizzes/answer_3' => 'quizzes#answer_3'
get 'quizzes/answer_4' => 'quizzes#answer_4'
get 'quizzes/answer_5' => 'quizzes#answer_5'

get 'tweets' => 'tweets#index'
get 'post/new' => 'tweets#new'
get 'tweets/after' => 'tweets#after'

get 'hello/index' => 'hello#index'
get 'hello/link' => 'hello#link'

get 'posts/index' => 'posts#index'

post 'tweets' => 'tweets#create'

get 'tweets/:id' => 'tweets#show',as: 'tweet'
get 'tweets/show' => 'tweets#show' 

patch 'tweets/:id' => 'tweets#update'
delete 'tweets/:id' => 'tweets#destroy'
get 'tweets/:id/edit' => 'tweets#edit', as:'edit_tweet'

get 'world_h/select' => 'world_h#select'
get 'world_h/world_h_top' => 'world_h#world_h_top'
get 'world_h/w_1' => 'world_h#w_1'
get 'world_h/w_2' => 'world_h#w_2'
get 'world_h/w_3' => 'world_h#w_3'
get 'world_h/w_a_1' => 'world_h#w_a_1'
get 'world_h/w_a_2' => 'world_h#w_a_2'
get 'world_h/w_a_3' => 'world_h#w_a_3'

root 'quizzes#tirionea_top'
end
