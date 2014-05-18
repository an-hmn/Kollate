class MoodboardsController < ApplicationController
  before_action :set_moodboard, only: [:show, :edit, :update, :destroy]

  # GET /moodboards
  # GET /moodboards.json
  def index
<<<<<<< HEAD
    @moodboards = current_user.moodboards.all
=======
    @moodboards = Moodboard.all
>>>>>>> c27ed90d4745e0c2d1db82c5add0bb84192ab8b4
  end

  # GET /moodboards/1
  # GET /moodboards/1.json
  def show
<<<<<<< HEAD

      @moodboards = current_user.moodboards.find(params[:id])

      respond_to do |format|
        format.html
        format.json { render json: @image }
    end
=======
>>>>>>> c27ed90d4745e0c2d1db82c5add0bb84192ab8b4
  end

  # GET /moodboards/new
  def new
<<<<<<< HEAD
    @moodboard = current_user.moodboards.new
=======
    @moodboard = Moodboard.new
>>>>>>> c27ed90d4745e0c2d1db82c5add0bb84192ab8b4
  end

  # GET /moodboards/1/edit
  def edit
<<<<<<< HEAD
    @moodboard = current_user.moodboards.find(params[:id])
=======
>>>>>>> c27ed90d4745e0c2d1db82c5add0bb84192ab8b4
  end

  # POST /moodboards
  # POST /moodboards.json
  def create
<<<<<<< HEAD
    @modboard = current_user.moodboards.new(params[:moodboard])
=======
    @moodboard = Moodboard.new(moodboard_params)
>>>>>>> c27ed90d4745e0c2d1db82c5add0bb84192ab8b4

    respond_to do |format|
      if @moodboard.save
        format.html { redirect_to @moodboard, notice: 'Moodboard was successfully created.' }
        format.json { render action: 'show', status: :created, location: @moodboard }
      else
        format.html { render action: 'new' }
        format.json { render json: @moodboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /moodboards/1
  # PATCH/PUT /moodboards/1.json
  def update
    respond_to do |format|
      if @moodboard.update(moodboard_params)
        format.html { redirect_to @moodboard, notice: 'Moodboard was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @moodboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moodboards/1
  # DELETE /moodboards/1.json
  def destroy
    @moodboard.destroy
    respond_to do |format|
      format.html { redirect_to moodboards_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moodboard
      @moodboard = Moodboard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def moodboard_params
      params[:moodboard]
    end
end
