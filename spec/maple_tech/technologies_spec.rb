# frozen_string_literal: true

require 'byebug'

RSpec.describe(MapleTech::Technologies) do
  context 'version' do
    it 'has a version number' do
      expect(MapleTech::Technologies::VERSION).not_to(be(nil))
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

    it 'should not have duplicate values' do
      uniq_count = MapleTech::Technologies.all.uniq(&:downcase).length
      total_technologies_count = MapleTech::Technologies.all.length
      expect(uniq_count).to(eql(total_technologies_count))
    end
  end
end
