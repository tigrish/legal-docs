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

```
en:
  vendor:
    legal_docs:
      interpolations:
        arbitration:
          language:
          location:
        company:
          name:
          short_name:
          url:
        governing_law:
          country:
          location:
          venue:
        open_source_licence:
          image_url:
          url:
          long_name:
          organisation:
          short_name:
        service.description:
          dmca_url:
          free_features:
          name:
          paid_features:
          privacy_policy_url:
          support_email:
          url:
```