class StatisticsController < ApplicationController
  def index
    @statistics = Statistic.all
  end

  def show
    @statistic = Statistic.find(params[:id])
  end

  def new
  end

  def create
  end

  def import
    @statistics = Statistic.all
    @tournament_tier = TournamentTier.find(statistic_params[:tournament_tier_id])
    file = params[:file]
    return redirect_to statistics_path, notice: 'Only CSV please' unless file.content_type == 'text/csv'
    StatisticImportService.new.call(file, statistic_params[:tournament_tier_id], statistic_params[:tourneydate])
    redirect_to statistics_path, notice: 'CSV imported!'
  end

  def statistic_params
    params.require(:statistic).permit(:tournament_tier_id, :cid, :name, :val, :cyear, :org, :title, :cc, :clvl, :hitterg, :hittergs, :pa, :hitterab, :h, :hitter1b, :hitter2b, :hitter3b, :hitterhr, :rbi, :hitterr, :hitterbb, :hitteribb, :hitterhp, :hittersh, :hittersf, :ci, :so, :gidp, :hittertb, ':pi/pa', :sb, :cs, :pitcherg, :pitchergs, :w, :l, :svo, :sv, :bs, :hld, :sd, :md, :ip, :bf, :pitcherab, :ha, :pitcher1b, :pitcher2b, :pitcher3b, :pitcherhr, :pitchertb, :pitcherr, :er, :pitcherbb, :pitcheribb, :k, :pitcherhp, :era, :pitchersh, :pitchersf, :qs, :pos, :tc, :a, :po, :e, :dp, :pct, :rng, :zr, :eff, :tourneydate)
  end

end
