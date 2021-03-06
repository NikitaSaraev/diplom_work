class DisciplinesController < ApplicationController
  # GET /disciplines
  # GET /disciplines.json
  
  
  def index

   if params[:group_id].nil? and params[:teacher_id].nil?
      @disciplines = Discipline.includes(:group , :teacher, :discipline_dictionary).all
   else
      @disciplines = Discipline.includes(:group, :teacher, :discipline_dictionary).where(:group_id=>params[:group_id])
      @disciplines = Discipline.includes(:group, :teacher, :discipline_dictionary).where(:teacher_id=>params[:teacher_id])
   end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @disciplines }
    end
  end

  # GET /disciplines/1
  # GET /disciplines/1.json
  def show
    @discipline = Discipline.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @discipline }
    end
  end

  # GET /disciplines/new
  # GET /disciplines/new.json
  def new
    @discipline = Discipline.new
    @discipline.teacher_id = params[:teacher_id]
    @discipline.group_id = params[:group_id]
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @discipline }
    end
  end

  # GET /disciplines/1/edit
  def edit
    @discipline = Discipline.find(params[:id])
  end

  # POST /disciplines
  # POST /disciplines.json
  def create
    @discipline = Discipline.new(params[:discipline])

    respond_to do |format|
      if @discipline.save
        format.html { redirect_to @discipline, :notice => 'Discipline was successfully created.' }
        format.json { render :json => @discipline, :status => :created, :location => @discipline }
      else
        format.html { render :action => "new" }
        format.json { render :json => @discipline.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /disciplines/1
  # PUT /disciplines/1.json
  def update
    @discipline = Discipline.find(params[:id])

    respond_to do |format|
      if @discipline.update_attributes(params[:discipline])
        format.html { redirect_to @discipline, :notice => 'Discipline was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @discipline.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /disciplines/1
  # DELETE /disciplines/1.json
  def destroy
    @discipline = Discipline.find(params[:id])
    @discipline.destroy

    respond_to do |format|
      format.html { redirect_to disciplines_url }
      format.json { head :ok }
    end
  end
end
