Rails.application.routes.draw do
  scope '/:locale', locale: /en|de/ do
    resources :books do
      resources :chapters, except: %i(show), shallow: true
      resources :media, only: %i(index)
    end
    resources :users, except: %i(show)
    resources :media
    resources :newsletter_subscriptions, only: %i(create index)
  end
  root 'media#index', locale: 'en'
end
