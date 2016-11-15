# frozen_string_literal: true
require 'scraped_page'

class MembersListPage < ScrapedPage
  field :term_id do
    noko.css('h4.news-title').text[/(\w+) созыва/, 1]
  end
end
