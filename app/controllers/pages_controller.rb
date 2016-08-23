class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:home, :comment_ca_fonctionne, :credit_insuffisant]
  def home
  end

  def comment_ca_fonctionne

  end

  def credit_insuffisant

  end
end
