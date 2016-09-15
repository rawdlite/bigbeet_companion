class AlbumGroupsController < ApplicationController
  before_action :set_album_group, only: [:show, :edit, :update, :destroy]

  # GET /album_groups
  # GET /album_groups.json
  def index
    @album_groups = AlbumGroup.all
  end

  # GET /album_groups/1
  # GET /album_groups/1.json
  def show
  end

  # GET /album_groups/new
  def new
    @album_group = AlbumGroup.new
  end

  # GET /album_groups/1/edit
  def edit
  end

  # POST /album_groups
  # POST /album_groups.json
  def create
    @album_group = AlbumGroup.new(album_group_params)

    respond_to do |format|
      if @album_group.save
        format.html { redirect_to @album_group, notice: 'Album group was successfully created.' }
        format.json { render :show, status: :created, location: @album_group }
      else
        format.html { render :new }
        format.json { render json: @album_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /album_groups/1
  # PATCH/PUT /album_groups/1.json
  def update
    respond_to do |format|
      if @album_group.update(album_group_params)
        format.html { redirect_to @album_group, notice: 'Album group was successfully updated.' }
        format.json { render :show, status: :ok, location: @album_group }
      else
        format.html { render :edit }
        format.json { render json: @album_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /album_groups/1
  # DELETE /album_groups/1.json
  def destroy
    @album_group.destroy
    respond_to do |format|
      format.html { redirect_to album_groups_url, notice: 'Album group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album_group
      @album_group = AlbumGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def album_group_params
      params.fetch(:album_group, {})
    end
end
