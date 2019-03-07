class UserCreation

  attr_accessor :opts, :user

  def initialize(opts)
    @opts = opts
  end

  def save
    @user = User.new(opts)
    user.family_goal = find_family_goal
    user.save
  end

  def full_messages
    user.errors.full_messages
  end

  private
  def find_family_goal
    FamilyGoal.find_by( cargo: user.cargo,
                        area:user.area,
                        mundo: user.mundo)
  end
end
