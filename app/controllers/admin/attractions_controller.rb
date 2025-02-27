class Admin::AttractionsController < ApplicationController

    def new
        @attraction = Attraction.new
    end

    # GET /attractions/1/edit
    def edit
        binding.pry
    end

    # POST /attractions or /attractions.json
    def create
        @attraction = Attraction.new(attraction_params)
        respond_to do |format|
            if @attraction.save
                format.html { redirect_to @attraction, notice: "Attraction was successfully created." }
                format.json { render :show, status: :created, location: @attraction }
            else
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @attraction.errors, status: :unprocessable_entity }
            end
        end
    end

    # PATCH/PUT /attractions/1 or /attractions/1.json
    def update
    respond_to do |format|
        if @attraction.update(attraction_params)
        format.html { redirect_to @attraction, notice: "Attraction was successfully updated." }
        format.json { render :show, status: :ok, location: @attraction }
        else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @attraction.errors, status: :unprocessable_entity }
        end
    end
    end

    # DELETE /attractions/1 or /attractions/1.json
    def destroy
        @attraction.destroy
        respond_to do |format|
            format.html { redirect_to attractions_url, notice: "Attraction was successfully destroyed." }
            format.json { head :no_content }
        end
    end

end