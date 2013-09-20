EindxTestService::Application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'omni' }
end
