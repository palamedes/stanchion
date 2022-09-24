# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Set some default action aliases
    alias_action :index, :show,       to: :read
    alias_action :new,                to: :create
    alias_action :edit,               to: :update
    alias_action :update, :destroy,   to: :modify

    # IMPORTANT: This ability file should ONLY used to define UNAUTHED things.
    # Thus all things requiring auth will be denied. If you want to add permissions
    # to allow an action then please make sure you're using the AuthedController
    # and not the ApplicationController as your controller inhertance and then
    # add the permissions to the individual ability files based on the model.
    #
    # Also note: This file is the ONLY ability file loaded for unauthed users.

    # Step 1:  Deny Everything
    cannot :manage, :all

    # Step 2:  Enable abilities for UNAUTHED users (any user can do these things)
    # We must do this here because the other ability files aren't loaded for an unauthed user.


  end
end
