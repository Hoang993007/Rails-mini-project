class PhotoReviewsController < ApplicationController
  before_action :set_photo_review, only: [:show, :edit, :update, :destroy]

  # GET /photo_reviews
  # GET /photo_reviews.json
  def index
    @photo_reviews = PhotoReview.all
  end

  # GET /photo_reviews/1
  # GET /photo_reviews/1.json
  def show
  end

  # GET /photo_reviews/new
  def new
    @photo_review = PhotoReview.new
  end

  # GET /photo_reviews/1/edit
  def edit
  end

  # POST /photo_reviews
  # POST /photo_reviews.json
  def create
    @photo_review = PhotoReview.new(photo_review_params)
    @photo_review.user_id = current_user.id

    respond_to do |format|
      if @photo_review.save
        url = "/photos/" + @photo_review.photo_id.to_s 
        format.html { redirect_to url, notice: 'Photo review was successfully created.' }
        format.json { render :show, status: :created, location: @photo_review }
      else
        format.html { render :new }
        format.json { render json: @photo_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photo_reviews/1
  # PATCH/PUT /photo_reviews/1.json
  def update
    respond_to do |format|
      if @photo_review.update(photo_review_params)
        format.html { redirect_to @photo_review, notice: 'Photo review was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo_review }
      else
        format.html { render :edit }
        format.json { render json: @photo_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_reviews/1
  # DELETE /photo_reviews/1.json
  def destroy
    @photo_review.destroy
    respond_to do |format|
      format.html { redirect_to photo_reviews_url, notice: 'Photo review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo_review
      @photo_review = PhotoReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def photo_review_params
      params.require(:photo_review).permit(:user_id, :photo_id, :review)
    end
end
