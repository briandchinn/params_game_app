Rails.application.routes.draw do

  namespace :api do
    get "/params_url" => "params_examples#query_params_action"
    get "/guess_url" => "params_examples#guess_action"
    get "/segment_guess_url/:guess" => "params_examples#guess_action"

    post "/body_params" => "params_examples#guess_action"
  end
end
