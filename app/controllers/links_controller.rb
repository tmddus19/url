class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def new
  end

  def create
    Link.create(
        short: params[:short],
        long: params[:long]
    )
    redirect_to '/links'
  end
  
  def destroy
    @link = Link.find(params[:id])
    @link.destroy
    redirect_to '/links'
  end
  
  def goto
    # 1.주소에서 short 를 가져와서 (params[:short])
    @short = params[:short] #=>naver
    # 2. Link DB에서 short를 가지고 있는 link를 찾는다.
    @link = Link.find_by(short: @short)
    # 3. 찾은 link의 long으로 redirect를 해준다.
    redirect_to @link.long
  end
end
