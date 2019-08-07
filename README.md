# Trio Blog API

This gem was created as a object of study in [my blog post](http://trio.dev). It's a simple API to make it easier to fetch the last Trio blog post.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'trio-blog-api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install trio-blog-api

## Usage

You can fetch the last blog post with:

```ruby
require "trio-blog-api"

Trio::Blog::API.fetch_last_post.to_h

{:title=>"7 Healthy Habits Of A Remote Software Developer",
 :thumbnail_image_url=>
  "https://res.cloudinary.com/usetrio/image/upload/h_270,c_scale/v1564583137/nolomx0dhkdjdd9zq8fo.jpg",
 :post_url=>
  "https://trio.dev/blog/7-healthy-habits-of-a-remote-software-developer-67133",
 :author=>
  {:name=>"Dhyego Calota",
   :avatar_image_url=>
    "https://res.cloudinary.com/usetrio/image/upload/h_90,c_scale/v1553087570/uwaslkbvubggrh8rul30.jpg"}}
```

## Settings

| Option                             | Type     | Default                      | Description                                      |
| ---------------------------------- | -------- | ---------------------------- | ------------------------------------------------ |
| `base_url`                         | *String* | `http://trio.dev`            | Base URL of trio's website                       |
| `post_page_path`                   | *String* | `/`                          | Post page path URL that contains the last post   |
| `post_selector`                    | *String* | `.card-article`              | CSS selector of the post wrapper element         |
| `title_selector`                   | *String* | `.card-article-title`        | CSS selector of the post title element           |
| `thumbnail_image_url_selector`     | *String* | `.card-article-thumb`        | CSS selector of the post thumbnail image element |
| `post_url_selector`                | *String* | `.card-article-link`         | CSS selector of the post link element            |
| `author_name_selector`             | *String* | `.card-article-author-name`  | CSS selector of the post author name element     |
| `author_avatar_image_url_selector` | *String* | `.card-article-author-image` | CSS selector of the post author avatar element   |

### Usage
```ruby
Trio::Blog::API.configure do |config|
  config.post_selector = '.card-article:first-child'
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/usetrio/trio-blog-api.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
