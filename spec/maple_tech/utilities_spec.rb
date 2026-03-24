# frozen_string_literal: true

RSpec.describe(MapleProject::Utilities) do
  context 'services' do
    it 'should not have nil value' do
      nil_value = MapleProject::Utilities.services.any?(&:nil?)
      expect(nil_value).to(eql(false))
    end

    it 'should not have empty value' do
      empty_value = MapleProject::Utilities.services.any?(&:nil?)
      expect(empty_value).to(eql(false))
    end

    it 'should not have duplicate values' do
      uniq_services = MapleProject::Utilities.services.uniq(&:downcase)
      all_services = MapleProject::Utilities.services
      expect(uniq_services).to(match_array(all_services))
    end

    it 'should not have blank space as first or last character' do
      services_with_empty_strings = MapleProject::Utilities.services.reject do |value|
        value[0] == ' ' || value[-1] == ' '
      end
      all_services = MapleProject::Utilities.services
      expect(services_with_empty_strings).to(match_array(all_services))
    end
  end

  context 'industries' do
    it 'should not have nil value' do
      nil_value = MapleProject::Utilities.industries.any?(&:nil?)
      expect(nil_value).to(eql(false))
    end

    it 'should not have empty value' do
      empty_value = MapleProject::Utilities.industries.any?(&:nil?)
      expect(empty_value).to(eql(false))
    end

    it 'should not have duplicate values' do
      uniq_industries = MapleProject::Utilities.industries.uniq(&:downcase)
      all_industries = MapleProject::Utilities.industries
      expect(uniq_industries).to(match_array(all_industries))
    end

    it 'should not have blank space as first or last character' do
      industries_with_empty_strings = MapleProject::Utilities.industries.reject do |value|
        value[0] == ' ' || value[-1] == ' '
      end
      all_industries = MapleProject::Utilities.industries
      expect(industries_with_empty_strings).to(match_array(all_industries))
    end
  end

  context 'thread types' do
    it 'should match expected enum values' do
      expect(MapleProject::Utilities.thread_types).to(eql(['QA', 'SE', 'PM']))
    end
  end
end
