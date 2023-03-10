class MypageController < ApplicationController
  before_action :require_login, only: [:destroy]
  # protect_from_forgery except: [:deleteDiary]

  def edit
    @diaries=Diary.all.order(code: :asc)
  end

  def login
  end

  def create
    user = User.find_by(id: "1")
    if user && user.authenticate(params[:password])
      log_in(user)
      redirect_to("/mypage")
    else
      flash.now[:danger] = 'メールアドレスかパスワードが間違っています。'
      # render 'new'
    end
  end

  def addDiary
    @diary=Diary.new(title: params[:title], content: params[:content],code: params[:code])
     @diaries=Diary.all.order(code: :asc)
    if @diary.save
      redirect_to("/mypage")
    else
      flash.now[:notice]='テキストを入力してください。'
      render("/mypage/edit")
    end
  end

  def editDiary
    @diary=Diary.find_by(id: params[:id])
    @diary.title=params[:title]
    @diary.code=params[:code]
    if params[:archive]
      @diary.archive=true
    else
      @diary.archive=false
    end
    @diary.content=params[:content]
    if @diary.save
      # redirect_to("/step/#{@diary.id}")
      redirect_to("/mypage")
    else
      redirect_to("/mypage")
    end
  end

  def editDiaryPage
    @diary=Diary.find_by(id: params[:id])
    @diaries=Diary.all.order(code: :asc)
  end

  def deleteDiary
    @diary=Diary.find_by(id: params[:id])
    if @diary.destroy
      # flash[:notice]="成功"
      redirect_to("/mypage")
    else
      # flash[:notice]="失敗"
      render("/mypage/edit")
    end
  end

 
end
