EverouteImpl::Application.routes.draw do
  match 'travel' => 'route#travel'
  root :to => 'route#travel'
end
