class WelcomeController < ApplicationController
  def index
    @name = "Mi nombre es"
  end

  def about
    redirect_to welcome_prices_path
  end

  def contact_us

  end

  def prices

  end

  # Vistas/metodos/acciones
end
