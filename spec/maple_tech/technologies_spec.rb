# frozen_string_literal: true

require 'byebug'

RSpec.describe(MapleTech::Technologies) do
  context 'version' do
    it 'has a version number' do
      expect(MapleTech::Technologies::VERSION).not_to(be(nil))
    end

    it 'must has version number of 0.1.0' do
      expect(MapleTech::Technologies::VERSION).to(eql('0.1'))
    end
  end

  context 'technologies' do
    it 'should not have nil value' do
      nil_value = MapleTech::Technologies.all.any? { |value| value.nil? }
      expect(nil_value).to(eql(false))
    end

    it 'should not have empty value' do
      empty_value = MapleTech::Technologies.all.any? { |value| value.eql?('') }
      expect(empty_value).to(eql(false))
    end
  end
end
