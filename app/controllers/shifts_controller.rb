class ShiftsController < ApplicationController
  before_action :set_shift, only: [:show, :edit, :update, :destroy]

  # GET /shifts
  # GET /shifts.json
  def index
    @shifts = Shift.user(current_user)
    @roles = Role.user(current_user)
    gon.user_id = @current_user.id

    gon.events = @shifts.joins(:employee, :role).each_with_object([]) do |shift, event|
      event << {
        title:  "#{shift.employee.first_name} #{shift.employee.last_name}, #{shift.role.name}",
        start:  datetime(shift.date, shift.start),
        end:    datetime(shift.date, shift.end)
      }
    end
  end

  # GET /shifts/1
  # GET /shifts/1.json
  def show
  end

  # GET /shifts/new
  def new
    @shift = Shift.new
    @employees = Employee.user(current_user)
    @roles = Role.user(current_user)
  end

  # GET /shifts/1/edit
  def edit
    @employees = Employee.user(current_user)
    @roles = Role.user(current_user)
  end

  # POST /shifts
  # POST /shifts.json
  def create
    @shift = Shift.new(shift_params)

    respond_to do |format|
      if @shift.save
        format.html { redirect_to shifts_path, notice: 'Shift was successfully created.' }
        format.json { render :show, status: :created, location: @shift }
      else
        format.html { redirect_to new_shift_path, alert: 'All fields are required.' }
        format.json { render json: @shift.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shifts/1
  # PATCH/PUT /shifts/1.json
  def update
    @employees = Employee.user(current_user)
    @roles = Role.user(current_user)
    respond_to do |format|
      if @shift.update(shift_params)
        format.html { redirect_to shifts_path, notice: 'Shift was successfully updated.' }
        format.json { render :show, status: :ok, location: @shift }
      else
        format.html { render :edit }
        format.json { render json: @shift.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shifts/1
  # DELETE /shifts/1.json
  def destroy
    @shift.destroy
    respond_to do |format|
      format.html { redirect_to shifts_url, notice: 'Shift was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shift
      @shift = Shift.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shift_params
      params.require(:shift).permit(:user_id, :title, :date, :start, :end, :employee_id, :role_id)
    end
end
