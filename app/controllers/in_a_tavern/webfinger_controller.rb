module InATavern
  class WebfingerController < ApplicationController
    def show
      if !params.key?(:resource)
        head :bad_request
        return
      end
      if params[:resource] != "acct:#{InATavern.config.actor}@#{request.host}"
        head :not_found
        return
      end
    end
  end
end
