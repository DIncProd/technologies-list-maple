# frozen_string_literal: true

RSpec.describe(MapleTech::Technologies) do
  context 'version' do
    it 'has a version number' do
      expect(MapleTech::Technologies::VERSION).not_to(be(nil))
    end
  end

  context 'technologies' do
    it 'should not have nil value' do
      nil_value = MapleTech::Technologies.all.any?(&:nil?)
      expect(nil_value).to(eql(false))
    end

    it 'should not have empty value' do
      empty_value = MapleTech::Technologies.all.any?(&:nil?)
      expect(empty_value).to(eql(false))
    end

    it 'should not have duplicate values' do
      uniq_technologies = MapleTech::Technologies.all.uniq(&:downcase)
      all_technologies = MapleTech::Technologies.all
      expect(uniq_technologies).to(match_array(all_technologies))
    end

    it 'should not have blank space as first or last character' do
      technologies_with_empty_strings = MapleTech::Technologies.all.reject do |value|
        value[0] == ' ' || value[-1] == ' '
      end
      all_technologies = MapleTech::Technologies.all
      expect(technologies_with_empty_strings).to(match_array(all_technologies))
    end
  end
end
