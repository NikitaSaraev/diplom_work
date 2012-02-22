class DisciplineDictionariesController < ApplicationController
  # GET /discipline_dictionaries
  # GET /discipline_dictionaries.json
  def index
    @discipline_dictionaries = DisciplineDictionary.all

    respond_to do |format|
      format.html # index.html.erb
      format.json do
        @discipline_dictionary = DisciplineDictionary.where("lower(name) LIKE lower(?)","%#{params[:q]}%").all
        render :json=>@discipline_dictionary.map(&:attributes)
	end
    end
  end

  # GET /discipline_dictionaries/1
  # GET /discipline_dictionaries/1.json
  def show
    @discipline_dictionary = DisciplineDictionary.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @discipline_dictionary }
    end
  end

  # GET /discipline_dictionaries/new
  # GET /discipline_dictionaries/new.json
  def new
    @discipline_dictionary = DisciplineDictionary.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @discipline_dictionary }
    end
  end

  # GET /discipline_dictionaries/1/edit
  def edit
    @discipline_dictionary = DisciplineDictionary.find(params[:id])
  end

  # POST /discipline_dictionaries
  # POST /discipline_dictionaries.json
  def create
    @discipline_dictionary = DisciplineDictionary.new(params[:discipline_dictionary])

    respond_to do |format|
      if @discipline_dictionary.save
        format.html { redirect_to @discipline_dictionary, :notice => 'Discipline dictionary was successfully created.' }
        format.json { render :json => @discipline_dictionary, :status => :created, :location => @discipline_dictionary }
      else
        format.html { render :action => "new" }
        format.json { render :json => @discipline_dictionary.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /discipline_dictionaries/1
  # PUT /discipline_dictionaries/1.json
  def update
    @discipline_dictionary = DisciplineDictionary.find(params[:id])

    respond_to do |format|
      if @discipline_dictionary.update_attributes(params[:discipline_dictionary])
        format.html { redirect_to @discipline_dictionary, :notice => 'Discipline dictionary was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @discipline_dictionary.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /discipline_dictionaries/1
  # DELETE /discipline_dictionaries/1.json
  def destroy
    @discipline_dictionary = DisciplineDictionary.find(params[:id])
    @discipline_dictionary.destroy

    respond_to do |format|
      format.html { redirect_to discipline_dictionaries_url }
      format.json { head :ok }
    end
  end
end
