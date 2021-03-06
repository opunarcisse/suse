class TeamtasksController < ApplicationController
  before_action :set_teamtask, only: [:show, :edit, :update, :destroy]

  # GET /teamtasks
  # GET /teamtasks.json
  def index

    @taskable = find_teamtask
    @teamtasks = @taskable.teamtasks
  end

  # GET /teamtasks/1
  # GET /teamtasks/1.json
  def show
  end

  # GET /teamtasks/new
  def new
    @teamtask = Teamtask.new
  end

  # GET /teamtasks/1/edit
  def edit
  end

  # POST /teamtasks
  # POST /teamtasks.json
  def create
    @taskable = find_teamtask
    @teamtask = @taskable.teamtasks.build(teamtask_params)

    respond_to do |format|
      if @teamtask.save
        format.html { redirect_to :id => nil, notice: 'successful' }
        format.json { render :show, status: :created, location: @teamtask }
      else
        format.html { render :new }
        format.json { render json: @teamtask.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teamtasks/1
  # PATCH/PUT /teamtasks/1.json
  def update
    respond_to do |format|
      if @teamtask.update(teamtask_params)
        format.html { redirect_to @teamtask, notice: 'Teamtask was successfully updated.' }
        format.json { render :show, status: :ok, location: @teamtask }
      else
        format.html { render :edit }
        format.json { render json: @teamtask.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teamtasks/1
  # DELETE /teamtasks/1.json
  def destroy
    @teamtask.destroy
    respond_to do |format|
      format.html { redirect_to teamtasks_url, notice: 'Teamtask was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teamtask
      @teamtask = Teamtask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teamtask_params
      params.require(:teamtask).permit(:name, :type, :dateline, :timeline, :taskable_id, :taskable_type, :description)
    end

  def find_teamtask
      params.each do |name, value|
       if name =~ /(.+)_id$/
         return $1.classify.constantize.find(value)
       end
    end
      nil
    end

end
