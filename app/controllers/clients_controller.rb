class ClientsController < ApplicationController
  before_action :authenticate_client!, except: [:index]

  def index
    # @client = current_client
  end
end
