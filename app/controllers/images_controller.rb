class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user! # except: [:index]

  # GET /images
  # GET /images.json
  def index
    @images = current_user.images.all
  end

  # GET /images/1
  # GET /images/1.json
  def show

    @images = current_user.images.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @image }
    end
  end

  # GET /images/new
  def new
    @image = current_user.images.new
  end

  # GET /images/1/edit
  def edit
    @image = current_user.images.find(params[:id])
  end

  # POST /images
  # POST /images.json
  def create
    @image = current_user.images.new(params[:image])

    respond_to do |format|
      if @image.save
        format.html { redirect_to @image, notice: 'Image was successfully created.' }
        format.json { render action: 'show', status: :created, location: @image }
      else
        format.html { render action: 'new' }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /images/1
  # PATCH/PUT /images/1.json
  def update
    @image = current_user.images.find(params[:id])

    respond_to do |format|
      if @image.update(image_params)
        format.html { redirect_to @image, notice: 'Image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1
  # DELETE /images/1.json
  def destroy
    @image = current_user.images.find(params[:id])
    @image.destroy
    respond_to do |format|
      format.html { redirect_to images_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_params
      params.require(:image).permit(:image, :title, :notes)
    end
end
