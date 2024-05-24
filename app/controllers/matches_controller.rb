class MatchesController < ApplicationController
  def index
    @matches = Match.all
  end

 # app/controllers/matches_controller.rb

def update
  @match = Match.find(params[:id])

  if @match.update(match_params)
    flash[:notice] = 'Match updated successfully'
  else
    flash[:alert] = 'Failed to update match'
  end

  redirect_to dashboard_path
end

private

def match_params
  params.require(:match).permit(:odds_1, :odds_x, :odds_2)
end

  # other actions...
end