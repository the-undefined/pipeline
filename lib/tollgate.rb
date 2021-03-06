# frozen_string_literal: true

require "dry/core/constants"
require "tollgate/cli"
require "tollgate/runner"
require "tollgate/errors"

module Tollgate
  class << self
    attr_accessor :command_block
  end

  def self.configure(&block)
    self.command_block = block
  end

  def self.reset!
    self.command_block = nil
  end
end
