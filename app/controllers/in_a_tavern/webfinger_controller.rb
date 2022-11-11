module InATavern
  class WebfingerController < ApplicationController
    def show
      if !params.key?(:resource)
        head :bad_request
        return
      end
      if params[:resource] == "acct:#{InATavern.config.actor}@#{request.host}"
        head :ok
      else
        head :not_found
      end
    end
  end
end
