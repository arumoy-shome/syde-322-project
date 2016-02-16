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
4. Install Otto
    - to have a uniform development environment and avoid the
    "This works on my machine but breaks on yours" scenario we are using Otto.
    - to know more about Otto, go [here](https://www.ottoproject.io/)
    - install Otto by visiting
      [this](https://www.ottoproject.io/docs/install/index.html) page and
      following the instructions there
    - **Note**: this will require you to add the `Otto` executable to your
      `$PATH`
    - install the latest version of vagrant from
      [here](https://www.vagrantup.com/downloads.html)
    - install VirtualBox from [here](https://www.virtualbox.org/wiki/Downloads)
    - `cd tutorify` to go into the project directory and run the following:
        1. `otto compile`
        2. `otto develop`
    - this will setup a Linux environment for development (this step will take a
      while so go grab a cup of :coffee:)
    - once done, ssh into your dev environment with `otto dev ssh`
    - **Note**: Run all your generations, server, migrations, tests, etc from
      ***within*** the dev environment! You can still code from your local
      machine.
5. Bundle all the gems
    - `cd` in to the project directory and `otto dev ssh`
    - `gem install bundler`
    - `bundle install`
6. Create the database tables
    - `bundle exec rake db:setup`
7. Run all tests
    - `rspec spec` to run the entire test suite
8. Start the server
    - since we are spinning up the server from a VM, we need to bind the server
      to `0.0.0.0`. More on this
      [here](https://www.ottoproject.io/docs/apps/ruby/dev.html)
    - `bundle exec rails server -b 0.0.0.0`
    - in another tab type `otto dev address` to get the server address
    - visit that address at port `3000` to checkout the app
    E.g. if your IP address is `100.92.119.83` then the app will be running on
    `http://100.92.119.83:3000`

- A very well written Getting Started Guide on Otto can be found
  [here](https://www.ottoproject.io/intro/index.html)
- Documentation on Otto can be found
  [here](https://www.ottoproject.io/docs/index.html)
