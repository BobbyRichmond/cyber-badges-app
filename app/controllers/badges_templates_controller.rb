class BadgesTemplatesController < ApplicationController
  before_filter :authenticate_admin, :except => [:index, :show]

  # GET /badges_templates
  # GET /badges_templates.json
  def index
    @badges_templates = BadgesTemplate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @badges_templates }
    end
  end

  # GET /badges_templates/1
  # GET /badges_templates/1.json
  def show
    @badges_template = BadgesTemplate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @badges_template }
    end
  end

  # GET /badges_templates/new
  # GET /badges_templates/new.json
  def new
    @badges_template = BadgesTemplate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @badges_template }
    end
  end

  # GET /badges_templates/1/edit
  def edit
    @badges_template = BadgesTemplate.find(params[:id])
  end

  # POST /badges_templates
  # POST /badges_templates.json
  def create
    @badges_template = BadgesTemplate.new(params[:badges_template])

    respond_to do |format|
      if @badges_template.save
        format.html { redirect_to @badges_template, notice: 'Badges template was successfully created.' }
        format.json { render json: @badges_template, status: :created, location: @badges_template }
      else
        format.html { render action: "new" }
        format.json { render json: @badges_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /badges_templates/1
  # PUT /badges_templates/1.json
  def update
    @badges_template = BadgesTemplate.find(params[:id])

    respond_to do |format|
      if @badges_template.update_attributes(params[:badges_template])
        format.html { redirect_to @badges_template, notice: 'Badges template was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @badges_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /badges_templates/1
  # DELETE /badges_templates/1.json
  def destroy
    @badges_template = BadgesTemplate.find(params[:id])
    @badges_template.destroy

    respond_to do |format|
      format.html { redirect_to badges_templates_url }
      format.json { head :no_content }
    end
  end

  private
  def authenticate_admin
    unless current_user.account.admin
      redirect_to root_path, notice: "You don't have permission to do that grumpy cat!!"
    end
  end
end
