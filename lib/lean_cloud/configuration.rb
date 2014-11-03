# -*- encoding : utf-8 -*-
module LeanCloud
  class Configuration
    attr_accessor :application_id, :application_key, :version, :host, :protocol

    def initialize
      @version = '1.1'
      @host = 'leancloud.cn'
      @protocol = 'https'
    end

    def make_url action
      "#{@protocol}://#{@host}/#{@version}#{action}"
    end
  end
end
