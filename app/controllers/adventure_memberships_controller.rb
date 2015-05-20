class AdventureMembershipsController < ApplicationController
  def create
    @adventure = Adventure.find(params[:adventure_id])
    @adventure_membership = @adventure.adventure_memberships.new(user: current_user)
    if @adventure_membership.save
      flash[:notice] = "You Have Joined The Adventure!"
      redirect_to @adventure
    end
  end
end
