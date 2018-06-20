class BracketsController < ApplicationController
  before_action :set_bracket, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:index, :show, :new, :edit, :update, :destroy]


  # GET /brackets
  # GET /brackets.json
  def index
    @brackets = Bracket.all
  end

  # GET /brackets/1
  # GET /brackets/1.json
  def show
    @teams = Leaderboard.all


  end

  def reward_sun
    reward_sun_champs
    reward_sun_runnerup
    reward_sun_semi


    redirect_to "/leaderboards"
  end

  def reward_wed
    reward_wed_champs
    reward_wed_runnerup
    reward_wed_semi


    redirect_to "/leaderboards"
  end


  def reward_fri
    reward_fri_champs
    reward_fri_runnerup
    reward_fri_semi


    redirect_to "/leaderboards"
  end


  #========================================================================
  #
  #         SUNDAY
  # =======================================================================



  def reward_sun_semi

    semi1_name = Bracket.where("id = '#{params[:id]}'").first.semi1
    semi1_record = @teams.where("team = '#{semi1_name}'").first
    semi1_record.sun_points = semi1_record.sun_points + 7
    semi1_record.sunday_semis = semi1_record.sunday_semis + 1

    semi1_record.save


    semi2_name = Bracket.where("id = '#{params[:id]}'").first.semi2
    semi2_record = @teams.where("team = '#{semi2_name}'").first
    semi2_record.sun_points = semi2_record.sun_points + 7
    semi2_record.sunday_semis = semi2_record.sunday_semis + 1

    semi2_record.save

    semi3_name = Bracket.where("id = '#{params[:id]}'").first.semi3
    semi3_record = @teams.where("team = '#{semi3_name}'").first
    semi3_record.sun_points = semi3_record.sun_points + 7
    semi3_record.sunday_semis = semi3_record.sunday_semis + 1

    semi3_record.save


    semi4_name = Bracket.where("id = '#{params[:id]}'").first.semi4
    semi4_record = @teams.where("team = '#{semi4_name}'").first
    semi4_record.sun_points = semi4_record.sun_points + 7
    semi4_record.sunday_semis = semi4_record.sunday_semis + 1

    semi4_record.save
  end

  def reward_sun_champs
    @teams = Leaderboard.all

    champ_name = Bracket.where("id = '#{params[:id]}'").first.champs
    champions_record = @teams.where("team = '#{champ_name}'").first
    champions_record.sun_points = champions_record.sun_points + 8
    champions_record.sunday_wins = champions_record.sunday_wins + 1

    champions_record.save
  end

  def reward_sun_runnerup

    @teams = Leaderboard.all

    runnerup_name = Bracket.where("id = '#{params[:id]}'").first.runnerup
    runnerup_record = @teams.where("team = '#{runnerup_name}'").first
    runnerup_record.sun_points = runnerup_record.sun_points + 3
    runnerup_record.sunday_2nds = runnerup_record.sunday_2nds + 1

    runnerup_record.save
  end


  #========================================================================
  #
  #         WEDNESDAY
  # =======================================================================

  def reward_wed_semi

    semi1_name = Bracket.where("id = '#{params[:id]}'").first.semi1
    semi1_record = @teams.where("team = '#{semi1_name}'").first
    semi1_record.wed_points = semi1_record.wed_points + 7
    semi1_record.wednesday_semis = semi1_record.wednesday_semis + 1

    semi1_record.save


    semi2_name = Bracket.where("id = '#{params[:id]}'").first.semi2
    semi2_record = @teams.where("team = '#{semi2_name}'").first
    semi2_record.wed_points = semi2_record.wed_points + 7
    semi2_record.wednesday_semis = semi2_record.wednesday_semis + 1

    semi2_record.save

    semi3_name = Bracket.where("id = '#{params[:id]}'").first.semi3
    semi3_record = @teams.where("team = '#{semi3_name}'").first
    semi3_record.wed_points = semi3_record.wed_points + 7
    semi3_record.wednesday_semis = semi3_record.wednesday_semis + 1

    semi3_record.save


    semi4_name = Bracket.where("id = '#{params[:id]}'").first.semi4
    semi4_record = @teams.where("team = '#{semi4_name}'").first
    semi4_record.wed_points = semi4_record.wed_points + 7
    semi4_record.wednesday_semis = semi4_record.wednesday_semis + 1

    semi4_record.save
  end

  def reward_wed_champs
    @teams = Leaderboard.all

    champ_name = Bracket.where("id = '#{params[:id]}'").first.champs
    champions_record = @teams.where("team = '#{champ_name}'").first
    champions_record.wed_points = champions_record.wed_points + 8
    champions_record.wednesday_wins = champions_record.wednesday_wins + 1

    champions_record.save
  end

  def reward_wed_runnerup

    @teams = Leaderboard.all

    runnerup_name = Bracket.where("id = '#{params[:id]}'").first.runnerup
    runnerup_record = @teams.where("team = '#{runnerup_name}'").first
    runnerup_record.wed_points = runnerup_record.wed_points + 3
    runnerup_record.wednesday_2nds = runnerup_record.wednesday_2nds + 1

    runnerup_record.save
  end









  #========================================================================
  #
  #     FRIDAY
  # =======================================================================




  def reward_fri_semi

    semi1_name = Bracket.where("id = '#{params[:id]}'").first.semi1
    semi1_record = @teams.where("team = '#{semi1_name}'").first
    semi1_record.fri_points = semi1_record.fri_points + 7
    semi1_record.friday_semis = semi1_record.friday_semis + 1

    semi1_record.save


    semi2_name = Bracket.where("id = '#{params[:id]}'").first.semi2
    semi2_record = @teams.where("team = '#{semi2_name}'").first
    semi2_record.fri_points = semi2_record.fri_points + 7
    semi2_record.friday_semis = semi2_record.friday_semis + 1

    semi2_record.save

    semi3_name = Bracket.where("id = '#{params[:id]}'").first.semi3
    semi3_record = @teams.where("team = '#{semi3_name}'").first
    semi3_record.fri_points = semi3_record.fri_points + 7
    semi3_record.friday_semis = semi3_record.friday_semis + 1

    semi3_record.save


    semi4_name = Bracket.where("id = '#{params[:id]}'").first.semi4
    semi4_record = @teams.where("team = '#{semi4_name}'").first
    semi4_record.fri_points = semi4_record.fri_points + 7
    semi4_record.friday_semis = semi4_record.friday_semis + 1

    semi4_record.save
  end

  def reward_fri_champs
    @teams = Leaderboard.all

    champ_name = Bracket.where("id = '#{params[:id]}'").first.champs
    champions_record = @teams.where("team = '#{champ_name}'").first
    champions_record.fri_points = champions_record.fri_points + 8
    champions_record.friday_wins = champions_record.friday_wins + 1
    champions_record.save
  end

  def reward_fri_runnerup

    @teams = Leaderboard.all

    runnerup_name = Bracket.where("id = '#{params[:id]}'").first.runnerup
    runnerup_record = @teams.where("team = '#{runnerup_name}'").first
    runnerup_record.fri_points = runnerup_record.fri_points + 3
    runnerup_record.friday_2nds = runnerup_record.friday_2nds + 1

    runnerup_record.save
  end












  # GET /brackets/new
  def new
    @bracket = Bracket.new
    @teams = Leaderboard.all

  end

  # GET /brackets/1/edit
  def edit
    @teams = Leaderboard.all
  end

  # POST /brackets
  # POST /brackets.json
  def create
    @bracket = Bracket.new(bracket_params)
    @teams = Leaderboard.all


    respond_to do |format|
      if @bracket.save
        format.html {redirect_to @bracket, notice: 'Bracket was successfully created.'}
        format.json {render :show, status: :created, location: @bracket}
      else
        format.html {render :new}
        format.json {render json: @bracket.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /brackets/1
  # PATCH/PUT /brackets/1.json
  def update
    respond_to do |format|
      if @bracket.update(bracket_params)
        format.html {redirect_to @bracket, notice: 'Bracket was successfully updated.'}
        format.json {render :show, status: :ok, location: @bracket}
      else
        format.html {render :edit}
        format.json {render json: @bracket.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /brackets/1
  # DELETE /brackets/1.json
  def destroy
    @bracket.destroy
    respond_to do |format|
      format.html {redirect_to brackets_url, notice: 'Bracket was successfully destroyed.'}
      format.json {head :no_content}
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_bracket
    @bracket = Bracket.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def bracket_params
    params.require(:bracket).permit(:champs, :runnerup, :semi1, :semi2, :semi3, :semi4)
  end

end
