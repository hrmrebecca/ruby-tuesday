class PeopleController < ApplicationController
  # GET /people
  # GET /people.json
  def index
    @people = Person.all
  end
  
  # GET /people/search
  # GET /people/search.json
  def search
    if params[:q].present?
      @people = Person.where(["name1 LIKE ?", "%#{params[:q]}%"])
    end
  end

  # GET /people/1
  # GET /people/1.json
  def show
    @person = Person.find(params[:id])
  end

  # GET /people/new
  # GET /people/new.json
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit
    @person = Person.find(params[:id])
  end

  # person /people
  # person /people.json
  def create
    @person = Person.new(params[:person])
    if @person.save
      redirect_to @person, notice: "Person was successfully created."
    else
      render :new
    end
  end

  # PUT /people/1
  # PUT /people/1.json
  def update
    @person = Person.find(params[:id])
    if @person.update_attributes(params[:person])
      redirect_to @person, notice: 'Person was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @person = Person.find(params[:id])
    @person.destroy


  end

end
