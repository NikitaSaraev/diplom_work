class GroupsController < ApplicationController
  # GET /groups
  # GET /groups.json

  def index
    @groups = Group.all

    respond_to do |format|
      format.html # index.html.erb
      format.json do
         @group = Group.where("lower(name) LIKE lower(?)","%#{params[:q]}%").all
        render :json=>@group.map(&:attributes)
      end
    end
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
    @group = Group.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @group }
    end
  end

  # GET /groups/new
  # GET /groups/new.json
  def new
    @group = Group.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @group }
    end
  end

  # GET /groups/1/edit
  def edit
    @group = Group.find(params[:id])
  end

  # POST /groups
  # POST /groups.json
  def create
    @group = Group.new(params[:group])
    @u = User.create(:login=>@group.name, :password=>@group.psd, :password_confirmation=>@group.psd, :email =>@group.name+'@mail.msiu.ru', :role =>`0`)
    respond_to do |format|
      if @group.save
        format.html { redirect_to @group, :notice => 'Группа была создана.' }
        format.json { render :json => @group, :status => :created, :location => @group }
      else
        format.html { render :action => "new" }
        format.json { render :json => @group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /groups/1
  # PUT /groups/1.json
  def update
    @group = Group.find(params[:id])
    uf = User.where(:login=>@group.name).select(:id)
    #@uu = User.find(uf)   
    respond_to do |format|
      if @group.update_attributes(params[:group])
        @uu = User.update(uf, :login=>@group.name, :password=>@group.psd, :password_confirmation=>@group.psd, :email =>@group.name+'@mail.msiu.ru') 
        format.html { redirect_to @group, :notice => 'Группа была обновлена.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @group = Group.find(params[:id])
    u1 = User.where(:login=>@group.name).select(:id)
    @u2 = User.find(u1)
    @u2.destroy
    @group.destroy
    respond_to do |format|
      format.html { redirect_to groups_url }
      format.json { head :ok }
    end
  end
end
