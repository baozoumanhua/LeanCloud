# -*- encoding : utf-8 -*-
module LeanCloud
  class Push < RestBase
    def push data, options = {}
      request_body = options.merge({
        data: data
      })

      send_post '/push', request_body
    end

    def batch_push device_type, data
      unless ['ios', 'android'].include?(device_type)
        raise 'not valid divice type. use "ios" or "android"'
      end

      push data, {where: {deviceType: device_type, valid: true}}
    end

    def push_to_installation installation, data
      push data, {where: {installationId: installation}}
    end
  end
end
