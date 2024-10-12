Rails.application.routes.draw do
  # Static pages
  get "/home",        to: "pages#home"
  get "/legal",       to: "pages#terms"
  get "/gdpr",        to: "pages#privacy"
  get "/preguntas",   to: "pages#faq"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  root "pages#home"
end
