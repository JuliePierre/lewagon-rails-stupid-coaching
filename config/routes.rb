Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "answer" => "coaching#answer"
  get "ask" => "coaching#ask", as: :question
end
