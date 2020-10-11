require 'active_model'
require 'is_a_validator'

class ValidTarget
end

class InvalidTarget
end

class TestModel
  include ActiveModel::Validations

  attr_accessor :target

  validates :target, is_a: ValidTarget
end

RSpec.describe 'IsAValidator', '#validate' do
  describe TestModel do
    it 'should pass validation if the attribute is nil' do
      subject.target
      expect(subject.valid?).to be true
      expect(subject.errors.count).to be 0
    end

    it 'should pass validation if the attribute is a ValidTarget' do
      subject.target = ValidTarget.new
      expect(subject.valid?).to be true
      expect(subject.errors.count).to be 0
    end

    it 'should fail validation if the attribute is not a ValidTarget' do
      subject.target = InvalidTarget.new
      expect(subject.valid?).to be false
      expect(subject.errors.count).to be 1
    end

    it 'should give a reasonable error message' do
      subject.target = 3
      subject.validate
      expect(subject.errors.count).to be 1
      expect(subject.errors.messages[:target].first).to eq 'must be an instance of ValidTarget'
    end
  end
end
