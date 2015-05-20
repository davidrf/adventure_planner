require 'rails_helper'

describe AdventureMembership do
  it { should belong_to :user }
  it { should belong_to :adventure }

  it { should have_valid(:user).when(User.new) }
  it { should_not have_valid(:user).when(nil) }

  it { should have_valid(:adventure).when(Adventure.new) }
  it { should_not have_valid(:adventure).when(nil) }
end

