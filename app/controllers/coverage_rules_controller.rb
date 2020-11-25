class CoverageRulesController < ApplicationController
  before_action :set_coverage_rule, only: [:show, :edit, :update, :destroy]

  # GET /coverage_rules
  # GET /coverage_rules.json
  def index
    @coverage_rules = CoverageRule.user(current_user) 
    gon.user_id = @current_user.id
  end

  # GET /coverage_rules/1
  # GET /coverage_rules/1.json
  def show
  end

  # GET /coverage_rules/new
  def new
    @coverage_rule = CoverageRule.new
  end

  # GET /coverage_rules/1/edit
  def edit
  end

  # POST /coverage_rules
  # POST /coverage_rules.json
  def create
    @coverage_rule = CoverageRule.new(coverage_rule_params)

    respond_to do |format|
      if @coverage_rule.save
        format.html { redirect_to @coverage_rule, notice: 'Coverage rule was successfully created.' }
        format.json { render :show, status: :created, location: @coverage_rule }
      else
        format.html { render :new }
        format.json { render json: @coverage_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coverage_rules/1
  # PATCH/PUT /coverage_rules/1.json
  def update
    respond_to do |format|
      if @coverage_rule.update(coverage_rule_params)
        format.html { redirect_to @coverage_rule, notice: 'Coverage rule was successfully updated.' }
        format.json { render :show, status: :ok, location: @coverage_rule }
      else
        format.html { render :edit }
        format.json { render json: @coverage_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coverage_rules/1
  # DELETE /coverage_rules/1.json
  def destroy
    @coverage_rule.destroy
    respond_to do |format|
      format.html { redirect_to coverage_rules_url, notice: 'Coverage rule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coverage_rule
      @coverage_rule = CoverageRule.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coverage_rule_params
      params.require(:coverage_rule).permit(:user_id)
    end
end
