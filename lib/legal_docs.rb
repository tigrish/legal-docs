require 'redcarpet'
require File.dirname(__FILE__) + '../../config/i18n'

module LegalDocs
  def self.privacy_policy
    LegalDoc.new(:privacy_policy)
  end

  def self.terms_of_service
    LegalDoc.new(:terms_of_service)
  end

  class LegalDoc
    def initialize(doc)
      @doc = doc
    end

    def title
      I18n.t i18n_scope("docs.#{@doc}.title")
    end

    def text
      I18n.t i18n_scope("docs.#{@doc}.body.markdown"), interpolations
    end

    def html
      Redcarpet::Markdown.new(Redcarpet::Render::HTML).render(text)
    end

  protected

    def interpolations
      { 
        :arbitration_language             => interpolate('arbitration.language'),
        :arbitration_location             => interpolate('arbitration.location'),
        :company_name                     => interpolate('company.name'),
        :company_short_name               => interpolate('company.short_name'),
        :company_url                      => interpolate('company.url'),
        :governing_law_country            => interpolate('governing_law.country'),
        :governing_law_location           => interpolate('governing_law.location'),
        :governing_law_venue              => interpolate('governing_law.venue'),
        :open_source_licence_image_url    => interpolate('open_source_licence.image_url'),
        :open_source_licence_url          => interpolate('open_source_licence.url'),
        :open_source_licence_long_name    => interpolate('open_source_licence.long_name'),
        :open_source_licence_organisation => interpolate('open_source_licence.organisation'),
        :open_source_licence_short_name   => interpolate('open_source_licence.short_name'),
        :service_description              => interpolate('service.description'),
        :service_dmca_url                 => interpolate('service.dmca_url'),
        :service_free_features            => interpolate('service.free_features'),
        :service_name                     => interpolate('service.name'),
        :service_paid_features            => interpolate('service.paid_features'),
        :service_privacy_policy_url       => interpolate('service.privacy_policy_url'),
        :service_support_email            => interpolate('service.support_email'),
        :service_url                      => interpolate('service.url')
      } 
    end

    def interpolate(key)
      I18n.t i18n_scope("interpolations.#{key}")
    end

    def i18n_scope(key)
      %w(vendor legal_docs).push(key).join('.').to_sym
    end
  end
end