Rails.application.routes.draw do
  get 'login'=>"mypage#login"
  post 'loginnow'=>"mypage#create"
  post 'logout'=>"mypage#logout"
  post 'signupnow'=>"mypage#signup"

  get 'mypage'=>"mypage#edit"
  post 'mypage/addDiary'=>"mypage#addDiary"
  get 'mypage/diary/:id'=>"mypage#editDiaryPage"
  post 'mypage/deleteDiary/:id' => "mypage#deleteDiary"
  post 'mypage/editDiary/:id'=>"mypage#editDiary"
  

  get 'foresight'=>"foresight#home"
  get 'history'=>"history#home"
  get 'daily' => "daily#home"
  get 'step' => "step#home"
  get 'step/:id'=>"step#diary"
  get "/" => "home#top"
end
