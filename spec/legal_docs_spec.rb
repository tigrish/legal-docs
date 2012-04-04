require File.dirname(__FILE__) + '/spec_helper'

Dir.glob('locales/*.yml') do |locale_file|
  describe "a locale file" do
    it_behaves_like 'a valid locale file', locale_file
  end
end

describe LegalDocs, "::privacy_policy" do
  it "has a title" do
    LegalDocs::privacy_policy.title.should == I18n.t(:'vendor.legal_docs.docs.privacy_policy.title')
  end

  it "provides all necessary interpolations for the content" do
    expect { LegalDocs::privacy_policy.content }.to_not raise_error(I18n::MissingInterpolationArgument)
  end
end

describe LegalDocs, "::terms_of_service" do
  it "has a title" do
    LegalDocs::terms_of_service.title.should == I18n.t(:'vendor.legal_docs.docs.terms_of_service.title')
  end

  it "provides all necessary interpolations for the content" do
    expect { LegalDocs::terms_of_service.content }.to_not raise_error(I18n::MissingInterpolationArgument)
  end
end