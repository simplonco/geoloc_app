class MapController < ApplicationController
  def display
    @locs_asso = Asso.all.map(&:position).compact
    # @locs_vol = Voluntary.all.map(&:positions).compact
  end
end
