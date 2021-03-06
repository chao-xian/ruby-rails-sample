# Building Minimal Docker Image for Rails App

After running
```
docker build -t ruby-rails-sample .
```

next run
```
docker run ruby-rails-sample
```

From http://blog.kontena.io/building-minimal-docker-image-for-rails/

From this point on it's the original docs from Heroku

# ruby-rails-sample

This is a simple Ruby app using the [Rails](http://rubyonrails.org) framework.

## Running Locally

Asumming you have [Ruby](https://www.ruby-lang.org), [Bundler](http://bundler.io) and [Heroku Toolbelt](https://toolbelt.heroku.com) installed on your machine:

```sh
git clone git@github.com:heroku/ruby-rails-sample.git # or clone your own fork
cd ruby-rails-sample
bundle
bundle exec rake bootstrap
foreman start
```

Your app should now be running on [localhost:5000](http://localhost:5000/).

## Deploying to Heroku

```
heroku create
git push heroku master
heroku run rake db:migrate
heroku open
```

## Documentation

For more information about using Ruby on Heroku, see these Dev Center articles:

- [Ruby on Heroku](https://devcenter.heroku.com/categories/ruby)
- [Getting Started with Ruby on Heroku](https://devcenter.heroku.com/articles/getting-started-with-ruby)
- [Getting Started with Rails 4.x on Heroku](https://devcenter.heroku.com/articles/getting-started-with-rails4)
- [Heroku Ruby Support](https://devcenter.heroku.com/articles/ruby-support)
