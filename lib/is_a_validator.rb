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
    unless value.nil? || value.is_a?(required_class)
      record.errors[attribute] << "#{attribute} must be a #{required_class.name}"
    end
  end
end