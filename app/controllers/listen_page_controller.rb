class ListenPageController < ApplicationController
before_action :set_listen, only: [:show]
  def show
  end
  private
    def set_listen
      @listen = listen.find(params[:id])
    end
end
