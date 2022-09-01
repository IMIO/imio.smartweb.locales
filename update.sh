#!/bin/bash

locales_directory=src/imio/smartweb/locales/locales

domain=imio.smartweb
bin/i18ndude rebuild-pot --exclude profiles.zcml --pot $locales_directory/$domain.pot --create $domain devel/*
bin/i18ndude sync --pot $locales_directory/$domain.pot $locales_directory/*/LC_MESSAGES/$domain.po

domain=plone
bin/i18ndude sync --pot $locales_directory/$domain-manual.pot $locales_directory/*/LC_MESSAGES/$domain.po
