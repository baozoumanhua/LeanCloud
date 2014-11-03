# -*- encoding : utf-8 -*-
require 'rest_client'
require "multi_json"
require "lean_cloud/version"
require "lean_cloud/configuration"
require "lean_cloud/rest_base"
require "lean_cloud/push"

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
