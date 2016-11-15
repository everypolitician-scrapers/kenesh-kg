# frozen_string_literal: true
require 'scraperwiki'
require 'require_all'

require_rel 'lib'

listpage = 'http://www.kenesh.kg/ru/deputy/list/35'
strategy = ScrapedPage::Strategy::LiveRequestArchive.new
# strategy = ScrapedPage::Strategy::LiveRequest.new

page = MembersListPage.new(url: listpage, strategy: strategy)
warn page.to_h
