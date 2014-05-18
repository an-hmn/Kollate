class MoodboardsController < ApplicationController
  before_action :set_moodboard, only: [:show, :edit, :update, :destroy]

  # GET /moodboards
  # GET /moodboards.json
  def index
    @moodboards = current_user.moodboards.all
  end

  # GET /moodboards/1
  # GET /moodboards/1.json
  def show

      @moodboards = current_user.moodboards.find(params[:id])

      respond_to do |format|
        format.html
        format.json { render json: @image }
    end
  end

  # GET /moodboards/new
  def new
    @moodboard = current_user.moodboards.new
  end

  # GET /moodboards/1/edit
  def edit
    @moodboard = current_user.moodboards.find(params[:id])
  end

  # POST /moodboards
  # POST /moodboards.json
  def create
    @modboard = current_user.moodboards.new(params[:moodboard])

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
