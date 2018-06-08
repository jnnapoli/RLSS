require 'net/http'
require 'uri'
require 'json'


class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:new, :edit, :update, :destroy]

  # GET /matches
  # GET /matches.json
  def index
    @matches = Match.where('match_start > ?', DateTime.new(2018, 5, 1)).reverse
  end

  # GET matches/recent1
  # GET /matches.json
  def recent1
    @team = Match.last.team1
    render layout: false
  end

  # GET matches/recent2
  # GET /matches.json
  def recent2
    @team = Match.last.team2
    render layout: false

  end

  # GET /matches/1
  # GET /matches/1.json
  def show
  end

  # GET /matches/new
  def new
    @match = Match.new
    
    
    #HTTP Request to get appropriate VOD url and start time
    vod_url = ''
    stream_start = ''

    uri = URI.parse("https://api.twitch.tv/kraken/channels/166362542/videos?limit=1&broadcast_type=archive")
    request = Net::HTTP::Get.new(uri)
    request["Accept"] = "application/vnd.twitchtv.v5+json"
    request["Client-Id"] = "fsf1bi7if4hm3gjn0kgysttgv1qb73"

    req_options = {
      use_ssl: uri.scheme == "https",
    }

    response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(request)
    end

    puts response.code

    response_json = response.body

    response_hash= JSON.parse(response_json)

    response_hash["videos"].each do |videos|
      vod_url = videos["url"].to_s
      stream_start = videos["created_at"].to_s
    end


    latest_vod = vod_url
    
    
    
    @stream_start = DateTime.iso8601(stream_start)
    
    @match_start = DateTime.now
    
    @difference = (@match_start.to_time - @stream_start.to_time)
    
    @difference = Time.at(@difference).utc.strftime("%Hh%Mm%Ss")
    
    @vod_url = latest_vod + "?t=" + @difference
    
    
    
    
    
   # @difference = ((Time.parse(@match_start.to_s) - Time.parse(@stream_start.to_s))/3600).to_s.utc.strftime("%Hh:%Mm:%Ss")

  
    
    
    
    
  end











  # GET /matches/1/edit
  def edit
   
    @vod_url = @match.vod_url
    @match_start = @match.match_start
    
    
  end

  # POST /matches
  # POST /matches.json
  def create
    @match = Match.new(match_params)

    respond_to do |format|
      if @match.save
        format.html { redirect_to @match, notice: 'Match was successfully created.' }
        format.json { render :show, status: :created, location: @match }
      else
        format.html { render :new }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matches/1
  # PATCH/PUT /matches/1.json
  def update
    respond_to do |format|
      if @match.update(match_params)
        format.html { redirect_to @match, notice: 'Match was successfully updated.' }
        format.json { render :show, status: :ok, location: @match }
      else
        format.html { render :edit }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matches/1
  # DELETE /matches/1.json
  def destroy
    @match.destroy
    respond_to do |format|
      format.html { redirect_to matches_url, notice: 'Match was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match
      @match = Match.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_params
      params.require(:match).permit(:title, :team1, :team2, :match_start, :vod_start, :clip, :winner, :vod_url)
    end
end
