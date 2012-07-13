class VoyagesController < ApplicationController

  autocomplete :airport, :name, full: true, full_model: true, display_value: 'info'

  before_filter :edit_day, only: [:create, :update]

  # GET /voyages
  # GET /voyages.json
  def index
    @voyages = Voyage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @voyages }
    end
  end

  # GET /voyages/1
  # GET /voyages/1.json
  def show
    @voyage = Voyage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @voyage }
    end
  end

  # GET /voyages/new
  # GET /voyages/new.json
  def new
    @voyage = Voyage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @voyage }
    end
  end

  # GET /voyages/1/edit
  def edit
    @voyage = Voyage.find(params[:id])
  end

  # POST /voyages
  # POST /voyages.json
  def create
    @voyage = Voyage.new(params[:voyage])

    respond_to do |format|
      if @voyage.save
        format.html { redirect_to @voyage, notice: 'Voyage was successfully created.' }
        format.json { render json: @voyage, status: :created, location: @voyage }
      else
        format.html { render action: "new" }
        format.json { render json: @voyage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /voyages/1
  # PUT /voyages/1.json
  def update
    @voyage = Voyage.find(params[:id])

    respond_to do |format|
      if @voyage.update_attributes(params[:voyage])
        format.html { redirect_to @voyage, notice: 'Voyage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @voyage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voyages/1
  # DELETE /voyages/1.json
  def destroy
    @voyage = Voyage.find(params[:id])
    @voyage.destroy

    respond_to do |format|
      format.html { redirect_to voyages_url }
      format.json { head :no_content }
    end
  end

  private
    def edit_day
      params[:voyage][:day] = params[:voyage][:arriving_at].to_time - params[:voyage][:crash_at].to_time
    end
end
