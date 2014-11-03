# -*- encoding : utf-8 -*-
module AvosService
  class RestBase
    attr_accessor :config

    def initialize config
      @config = config
    end

    def send_post action, content, header = {}, &block
      url = @config.make_url action
      json_data = MultiJson.dump content

      header = {
        :content_type => :json,
        :'X-AVOSCloud-Application-Id' => @config.application_id,
        :'X-AVOSCloud-Application-Key' => @config.application_key
      }.merge header
      RestClient.post url, json_data, header, &block
    end
  end
end
