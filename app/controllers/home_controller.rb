class HomeController < ApplicationController
  #attr_accessor :
  def top
    #topアクションでインスタンス変数(@content)へ格納
    @content = params[:content]
  end

  def create
    #createアクション内でtopアクションを呼ぶ。その時に、フォームから受け取った値もtopアクションへ送信
    redirect_to :action => 'top', :content => params[:content]
  end
end
r