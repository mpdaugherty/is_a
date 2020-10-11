# frozen_string_literal: true

require 'active_model'

# This validates that a polymorphic association implements a specific Concern or is a specific class
#
# Usage:
#
#   belongs_to :account, polymorphic: true
#   validates :account, is_a: Account
#
class IsAValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    required_class = options[:with]

    return if value.nil? || value.is_a?(required_class) # All good here

    record.errors[attribute] << "must be an instance of #{required_class.name}" # Not good here
  end
end
