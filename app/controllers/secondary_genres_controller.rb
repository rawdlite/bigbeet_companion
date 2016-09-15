class SecondaryGenresController < ApplicationController
  before_action :set_secondary_genre, only: [:show, :edit, :update, :destroy]

  # GET /secondary_genres
  # GET /secondary_genres.json
  def index
    @secondary_genres = SecondaryGenre.all
  end

  # GET /secondary_genres/1
  # GET /secondary_genres/1.json
  def show
  end

  # GET /secondary_genres/new
  def new
    @secondary_genre = SecondaryGenre.new
  end

  # GET /secondary_genres/1/edit
  def edit
  end

  # POST /secondary_genres
  # POST /secondary_genres.json
  def create
    @secondary_genre = SecondaryGenre.new(secondary_genre_params)

    respond_to do |format|
      if @secondary_genre.save
        format.html { redirect_to @secondary_genre, notice: 'Secondary genre was successfully created.' }
        format.json { render :show, status: :created, location: @secondary_genre }
      else
        format.html { render :new }
        format.json { render json: @secondary_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /secondary_genres/1
  # PATCH/PUT /secondary_genres/1.json
  def update
    respond_to do |format|
      if @secondary_genre.update(secondary_genre_params)
        format.html { redirect_to @secondary_genre, notice: 'Secondary genre was successfully updated.' }
        format.json { render :show, status: :ok, location: @secondary_genre }
      else
        format.html { render :edit }
        format.json { render json: @secondary_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secondary_genres/1
  # DELETE /secondary_genres/1.json
  def destroy
    @secondary_genre.destroy
    respond_to do |format|
      format.html { redirect_to secondary_genres_url, notice: 'Secondary genre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_secondary_genre
      @secondary_genre = SecondaryGenre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def secondary_genre_params
      params.fetch(:secondary_genre, {})
    end
end
