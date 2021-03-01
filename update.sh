#!/bin/bash

domain=imio.smartweb
locales_directory=src/imio/smartweb/locales/locales

bin/i18ndude rebuild-pot --pot $locales_directory/$domain.pot --create $domain devel/*
bin/i18ndude sync --pot $locales_directory/$domain.pot $locales_directory/*/LC_MESSAGES/$domain.po
