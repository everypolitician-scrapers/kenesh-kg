# frozen_string_literal: true
require 'scraperwiki'
require 'require_all'

require_rel 'lib'

listpage = 'http://www.kenesh.kg/ru/deputy/list/35'
# strategy = ScrapedPage::Strategy::LiveRequestArchive.new
strategy = ScrapedPage::Strategy::LiveRequest.new
require 'open-uri/cached'

page = MembersListPage.new(url: listpage, strategy: strategy)
pp page.to_h
