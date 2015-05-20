require 'rails_helper'

describe Adventure do
  it { should have_many(:adventure_memberships) }
  it { should have_many(:members).through(:adventure_memberships).source(:user) }
end
