class AlbumReviewsController < ApplicationController
  before_action :set_album_review, only: [:show, :edit, :update, :destroy]

  # GET /album_reviews
  # GET /album_reviews.json
  def index
    @album_reviews = AlbumReview.all
  end

  # GET /album_reviews/1
  # GET /album_reviews/1.json
  def show
    @album_review.user_id = current_user.id
  end

  # GET /album_reviews/new
  def new
    @album_review = AlbumReview.new
  end

  # GET /album_reviews/1/edit
  def edit
  end

  # POST /album_reviews
  # POST /album_reviews.json
  def create
    @album_review = AlbumReview.new(album_review_params)
    @album_review.user_id = current_user.id

    respond_to do |format|
      if @album_review.save
        #format.html { redirect_to @album_review, notice: 'Album review was successfully created.' }
        url = "/albums/" + @album_review.album_id.to_s
        format.html { redirect_to url, notice: 'Album review was successfully created.' }
        format.json { render :show, status: :created, location: @album_review }
      else
        format.html { render :new }
        format.json { render json: @album_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /album_reviews/1
  # PATCH/PUT /album_reviews/1.json
  def update
    respond_to do |format|
      if @album_review.update(album_review_params)
        format.html { redirect_to @album_review, notice: 'Album review was successfully updated.' }
        format.json { render :show, status: :ok, location: @album_review }
      else
        format.html { render :edit }
        format.json { render json: @album_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /album_reviews/1
  # DELETE /album_reviews/1.json
  def destroy
    @album_review.destroy
    respond_to do |format|
      format.html { redirect_to album_reviews_url, notice: 'Album review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album_review
      @album_review = AlbumReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def album_review_params
      params.require(:album_review).permit(:user_id, :album_id, :review)
    end
end
