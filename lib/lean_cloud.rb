# -*- encoding : utf-8 -*-
require 'rest_client'
require "multi_json"
require "avos_service/version"
require "avos_service/configuration"
require "avos_service/rest_base"
require "avos_service/push"

module LeanCloud
  extend self
  attr_accessor :configuration

  def configure
    self.configuration ||= Configuration.new
    yield(self.configuration)
  end

  def push_service
    Push.new(self.configuration)
  end
end

LeanCloud.configure {}
