# frozen_string_literal: true
require 'scraped_page'
require 'pry'

class MembersListPage < ScrapedPage
  field :term_id do
    noko.css('h4.news-title').text[/(\w+) созыва/, 1]
  end

  field :members do
    # TODO: extract to a Fragment class
    noko.xpath('//table[@class="table"]//tr[td]').map do |tr|
      td = tr.css('td')
      {
        number:  td[0].text,
        name:    td[1].text,
        url:     td[1].css('a/@href').text,
        faction: td[2].text,
      }
    end
  end
end
