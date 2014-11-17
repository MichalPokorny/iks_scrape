# IksScrape

This gem scrapes IKS investment fund values from IKS's publicly available webpage.

    require 'iks_scrape'
    IksScrape::Scraper.new.scrape

    # =>
    #   {"Amundi Funds Cash EUR"=>
    #     {:price=>101.23, :date=>#<Date: 2014-11-12 ((2456974j,0s,0n),+0s,2299161j)>},
    #    "Amundi Funds Cash USD"=>
    #     {:price=>101.06, :date=>#<Date: 2014-11-12 ((2456974j,0s,0n),+0s,2299161j)>},
    #    ... ...}

## Installation

Add this line to your application's Gemfile:

    gem 'iks_scrape'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install iks_scrape

## Usage

TODO: Write usage instructions here

Nope. Good luck.

## Contributing

1. Fork it ( http://github.com/MichalPokorny/iks_scrape/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
