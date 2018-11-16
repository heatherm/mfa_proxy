Rails.application.routes.draw do
  devise_for :users, :path_names => {
    :verify_authy => "/verify-token",
    :enable_authy => "/enable-two-factor",
    :verify_authy_installation => "/verify-installation",
    :authy_onetouch_status => "/onetouch-status"
  }
  root to: "home#index"
end
