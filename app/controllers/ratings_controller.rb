class RatingsController < ApplicationController
  def create
    
    @rating = Rating.new(params[:rating])
    @event = Event.find(params[:rating][:event_id])

    respond_to do |format|
        if @rating.save
          format.json { render :json => { :avg_rating => @event.avg_rating } }
        else
          format.json { render :json => @rating.errors, :status => :unprocessable_entity }
        end
    end
  end

  def update
    @rating = Rating.find(params[:id])
    @event = Event.find(params[:rating][:event_id])

    @rating.stars =  params[:rating][:stars]
    respond_to do |format|
      if @rating.save
        format.json { render :json => { :avg_rating => @event.avg_rating } }
      else
        format.json { render :json => @rating.errors, :status => :unprocessable_entity }
      end
    end
  end

  private
    def ratings_params
      params.require(:rating).permit(:stars, :user_id, :event_id)
    end
end

