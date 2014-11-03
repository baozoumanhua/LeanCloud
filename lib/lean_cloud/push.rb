# -*- encoding : utf-8 -*-
module LeanCloud
  class Push < RestBase
    def push data, options = {}
      request_body = options.merge({
        data: data
      })

      send_post '/push', request_body
    end

    def push_by_device_type data, device_type
      device_type = device_type.to_s
      unless ['ios', 'android'].include?(device_type)
        raise 'not valid divice type. use "ios" or "android"'
      end

      push data, {where: {deviceType: device_type, valid: true}}
    end

    def push_to_installation data, installation
      push data, {where: {installationId: installation}}
    end
  end
end
