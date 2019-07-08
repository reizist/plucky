# encoding: UTF-8
require 'set'
require 'mongov1'
require 'plucky/extensions'
require 'plucky/criteria_hash'
require 'plucky/options_hash'
require 'plucky/query'
require 'plucky/pagination'

module Plucky
  autoload :Version, 'plucky/version'

  # Array of finder DSL methods to delegate
  Methods = Plucky::Query::DSL.instance_methods.sort.map(&:to_sym)

  # Public: Converts value to object id if possible
  #
  # value - The value to attempt converation of
  #
  # Returns BSONV1::ObjectId or value
  def self.to_object_id(value)
    return value if value.is_a?(BSONV1::ObjectId)
    return nil   if value.nil? || (value.respond_to?(:empty?) && value.empty?)

    if BSONV1::ObjectId.legal?(value.to_s)
      BSONV1::ObjectId.from_string(value.to_s)
    else
      value
    end
  end

  # Private
  ModifierString = '$'

  # Internal
  def self.modifier?(key)
    key.to_s[0, 1] == ModifierString
  end
end
