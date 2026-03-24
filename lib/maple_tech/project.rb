# frozen_string_literal: true

module MapleProject
  class Utilities

    # rubocop:disable Metrics/CollectionLiteralLength
    def self.services
      [
        'Custom Software Development',
        'Web Development',
        'Mobile App Development',
        'UI/UX Design',
        'Software Consulting',
        'Quality Assurance and Testing',
        'Cloud Services',
        'DevOps Services',
        'Cybersecurity Services',
        'Big Data Analytics',
        'AI and Machine Learning Solutions',
        'Blockchain Development',
        'IT Support and Maintenance',
        'Digital Transformation Services',
        'E-commerce Solutions',
        'ERP and Microsoft Dynamics',
        'CRM (Customer Relationship Management) Solutions',
        'AR/VR Development',
        'IoT (Internet of Things) Development',
        'Data Science and Predictive Analytics',
        'Digital Marketing',
        'Cloud Computing (DevOps, DevSecOps)',
        'Enterprise Solution',
        'Metaverse Technology',
        'Generative AI',
        'Application security services',
        'Cybersecurity consulting',
        'Not Selected'
      ].freeze
    end
    # rubocop:enable Metrics/CollectionLiteralLength

    # rubocop:disable Metrics/CollectionLiteralLength
    def self.industries
      [
        'Not Applicable',
        'Education',
        'Construction',
        'Logistics and Supply Chain',
        'Automotive',
        'FMCG',
        'Health Care',
        'Oil and Gas',
        'Pharmacutical Manufacturing',
        'Fintech',
        'Retail',
        'Ecommerce',
        'Travel and Tourism',
        'Information Technology'
      ].freeze
    end
    # rubocop:enable Metrics/CollectionLiteralLength

    def self.thread_types
      [
        'QA',
        'SE',
        'PM'
      ].freeze
    end
  end
end
