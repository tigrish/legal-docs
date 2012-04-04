# Legal Docs

[![Build Status](https://secure.travis-ci.org/tigrish/legal-docs.png?branch=master)](http://travis-ci.org/tigrish/legal-docs)

The aim of this project is to get you up and running with a privacy policy and terms of service quickly, and without having to write the damn things for each application.

## Installation

Add `legal-docs` to your `Gemfile` and run the `bundle` command.

## Use

There are currently 2 documents that you can use :

- A privacy policy (`privacy_policy`)
- Terms of service (`terms_of_service`)

In your views call this to render the document's text :

    LegalDocs::privacy_policy.text
    
You can also get a document's title (for a link title for example), like so :

    LegalDocs::privacy_policy.title


## Customising interpolations

Interpolations use `I18n`; to customise, simply overwrite any of the following keys :

- vendor.legal_docs.interpolations.arbitration.language
- vendor.legal_docs.interpolations.arbitration.location
- vendor.legal_docs.interpolations.company.name
- vendor.legal_docs.interpolations.company.short_name
- vendor.legal_docs.interpolations.company.url
- vendor.legal_docs.interpolations.governing_law.country
- vendor.legal_docs.interpolations.governing_law.location
- vendor.legal_docs.interpolations.governing_law.venue
- vendor.legal_docs.interpolations.open_source_licence.image_url
- vendor.legal_docs.interpolations.open_source_licence.url
- vendor.legal_docs.interpolations.open_source_licence.long_name
- vendor.legal_docs.interpolations.open_source_licence.organisation
- vendor.legal_docs.interpolations.open_source_licence.short_name
- vendor.legal_docs.interpolations.service.description
- vendor.legal_docs.interpolations.service.dmca_url
- vendor.legal_docs.interpolations.service.free_features
- vendor.legal_docs.interpolations.service.name
- vendor.legal_docs.interpolations.service.paid_features
- vendor.legal_docs.interpolations.service.privacy_policy_url
- vendor.legal_docs.interpolations.service.support_email
- vendor.legal_docs.interpolations.service.url