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

## Configuration

You must define a value for *number_popularity_classes* in _config.yml for this plugin to work. *number_popularity_classes* is the number of classes to divide the tag across for the tag cloud.

## Usage

This plugin adds two data value, *tag_list* and *tag_data*. *tag_list* contains a list of all the tags that are used in the site. *tag_data* contains a hash with the following structure:

    {'tagOne': {
        'post_count': 10,
        'popularity': 44,
        'popularity_class': 2
    },
    'tagTwo': {
        'post_count': 14,
        'popularity': 67,
        'popularity_class': 5
    },
    ...}

*post_count* contains the number of posts that use the tag, *popularity* is the percentage from 0-100 of the tag, and *popularity_class* is a remapping of the percentage to a numerical range between 0 and *number_popularity_classes*.


## Contributing

1. Fork it ( https://github.com/mitmaro/jekyll-tags-list-plugin/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
