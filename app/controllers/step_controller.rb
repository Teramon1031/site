class StepController < ApplicationController
  def home
   @diaries=Diary.where(archive: false).order(code: :asc)
  end

  def diary
   @id=params[:id]
   @diaries=Diary.where(archive: false).order(code: :asc)
   @diary=Diary.find_by(id: @id)
   @diarysize=Diary.all.count
  end
end
