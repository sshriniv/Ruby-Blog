class Ability
  include CanCan::Ability

  def initialize(user)


    # Admins chave access to perform all actions on all objects
    user ||= User.new # guest user (not logged in)
    if user.has_role? :admin
      can :manage, :all
    end


    #Non Admins can read posts
    can :read, Post

    #Logged in users can create posts and update their posts
    #unless user.new_record? means if "user.new_record" is false. This will b efalse if the user is already stored in the database i.e, the user is logged in
    unless user.new_record?
     can :create, Post
     can :update, Post, :user_id => user.id
     can :destroy, Post, :user_id => user.id
    end


    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
