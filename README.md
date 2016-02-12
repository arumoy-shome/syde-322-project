# Tutorify

[![Build Status](https://travis-ci.org/arumoy-shome/tutorify.svg?branch=master)](https://travis-ci.org/arumoy-shome/tutorify)

This application is part of the SYDE 322 Software Design course
at the University of Waterloo.

# Get Started

1. Install ruby
    - we are using `ruby 2.3.0`
    - steps to install ruby can be found
    [here](https://www.ruby-lang.org/en/documentation/installation/)
2. Install rails
    - `gem install rails`
    - **Note**: you might need to append `sudo` to the above command
    - additional information on rails can be found
    [here](http://guides.rubyonrails.org/getting_started.html)
3. Clone the repo
    - from the terminal run
    `git clone git@github.com:arumoy-shome/syde-322-project.git`
4. Bundle all the gems
    - `cd` in to the project directory
    - `gem install bundler`
    - `bundle install`
5. Create the database tables
    - `bundle exec rake db:setup`
6. Run all tests
    - `rspec spec` to run the entire test suite
7. Start the server
    - `bundle exec rails server`
    - visit `http://localhost:3000` from your favourite browser


