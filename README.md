# README

## External dependencies

* redis
* elasticsearch >= 2.0 (not tested with >= 5.0)

## Ruby dependencies

* rails ~> 5.0.0
* puma
* devise
* pundit
* aasm
* kaminari
* activeadmin

## Installation

```
bundle exec rake db:schema:load
```

Then go to `http://localhost:3000`

## Bootstrap

You can load sample data with `rake db:seed`.

Autologin is set on development, you can disable it in `config/environments/development.rb`

The admin interface is available through `http://localhost:3000/admin`, you can create an admin user with the rails console:

```
AdminUser.create(email: "admin@example.com", password: "password")
```

## Configuration

FurryMart use the *figaro* gem to handle configuration by using environment variables. Set your environments variables in `config/application.yml`.

```
production:
  BUNDLE_WITHOUT: 'test:development'
  CLOUDFRONT_SUBDOMAIN:
  DATABASE_URL: postgres:///furrymart
  DIRECT_UPLOAD_AWS_ACCESS_KEY_ID: [aws_key_id]
  DIRECT_UPLOAD_AWS_SECRET_ACCESS_KEY: [aws_secret_access_key]
  DIRECT_UPLOAD_S3_BUCKET: [s3_bucket_name]
  DIRECT_UPLOAD_S3_URL: [s3_bucket_url]
  DIRECT_UPLOAD_AWS_REGION: [aws_region_of_s3_bucket]
  DOMAIN: furrymart.com
  ELASTICSEARCH_URL: localhost:9200
  FURAFFINITY_COOKIE_A: [first cookie for furaffinity import (optional)]
  FURAFFINITY_COOKIE_B: [second cookie for furaffinity import (optional)]
  IMAGE_SERVER_BASE_URL: [url of the sharpen image server]
  IMAGE_SERVER_VERSION: 0 # increment this to force cache invalidation
  RACK_ENV: production
  RAILS_SERVE_STATIC_FILES: enabled
  SECRET_KEY_BASE: [generate one with rake secret]
  SMTP_LOGIN: [smtp_login]
  SMTP_PASSWORD: [smtp_password]
  SMTP_PORT: '587'
  SMTP_SERVER: [smtp_server]
  TELEGRAM_BOT_API_TOKEN: [token for telegram bot (optional)]
  TELEGRAM_FURRYMART_LIVE_CHANNEL_ID: '@FurryMartLive'
  TWITTER_ACCESS_TOKEN: [token for twitter bot (optional)]
  TWITTER_ACCESS_TOKEN_SECRET: [secret for twitter bot (optional)]
  TWITTER_CONSUMER_KEY: [for twitter bot (optional)]
  TWITTER_CONSUMER_SECRET: [for twitter bot (optional)]
  TWITTER_LOGIN_API_KEY: [for twitter login (optional)]
  TWITTER_LOGIN_API_SECRET: [for twitter login (optional)]
  TWITTER_LINK: https://twitter.com/FurryMart
  ERROR_REPORT_EMAIL: [email address for exception reporting]
```

## Serving image

FurryMart uses an image server that download and resize images from S3 on the fly. You can checkout and install this server from [this repository](https://github.com/phorque/sharpen).

Please get in touch with us on [Twitter](https://twitter.com/FurryMart) if you want to use our own image server for your project.

## License

MIT License

Copyright (c) 2017 FurryMart

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

## EXCEPTIONS TO THE MIT LICENSE

The files named `ciel_web_mini_full.jpg`, `ciel_web_mini.jpg`,
`og_default_image.png`, `403.png`, `404.png`, `500.png`, `502.png`, `marty.png`
and any file derived from them are under license agreement with the artists and
MUST NOT be used without authorisation from the respective artists.

The background was created by [floo](https://www.furaffinity.net/user/floo).
Marty was created by [bablog](https://www.furaffinity.net/user/bablog).
