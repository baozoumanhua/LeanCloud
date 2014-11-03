# -*- encoding : utf-8 -*-
module AvosService
  class Push < RestBase
    def push data, others = {}
      content = others.merge({
        data: data
      })

      send_post '/push', content
    end

    def push_to_installation data, installation
      push data, {where: {installationId: installation}}
    end
  end
end
