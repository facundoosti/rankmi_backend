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
    opts = user.slice(:cargo, :area, :mundo).values.map(&:downcase)
    FamilyGoal.where('lower(cargo) = ? AND lower(area) = ? AND lower(mundo) = ?', *opts).take
  end
end
