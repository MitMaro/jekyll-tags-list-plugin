# Jekyll Tags Plugin

Provides a list of tags for use in tag lists or tag clouds. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem mm-jekyll-tags-list
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mm-jekyll-tags-list

## Usage

This plugin adds two data value, __
			site.data['tag_list'] = TagsList.generate_tags_structure(site).keys
			site.data['tag_data'] = TagsList.generate_tags_structure(site)
			{% for tag in site.data.tag_list %}


## Contributing

1. Fork it ( https://github.com/mitmaro/jekyll-prism-plugin/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
