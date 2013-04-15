Version Control
------
We use git. It's pretty great. If you're not familiar, mess with [this great learning application from CodeSchool & GitHub](http://try.github.com). 

We think it's important that you know a lot of git before you get started, including:

* Forks
* Branches
* Merging
* Rebases
* Resolving conflicts
* Blames
* Configuration (adding remote repos & .gitignore)


Ruby
------

Here is a link to the style that we have adopted as a pattern:
[Ruby Style Guide](https://github.com/styleguide/ruby)

Testing is crazy important, we make use of:

* Unit tests (heavily)
* Functional tests (hardly, we're putting an emphasis on this moving forward)
* Integration tests (too much, we're hoping to slim these down since they're so slow!) 

Rails
--

* [Active Merchant](http://activemerchant.org/)
* [Haml](http://haml.info/)
* [Paperclip](https://github.com/thoughtbot/paperclip)

JavaScript
--

* [jQuery](http://jquery.com/)
* [Highcharts](http://www.highcharts.com/)
* [Colorbox](http://www.jacklmoore.com/colorbox)

However we are making a concious effort to move towards a more MV* oriented approach to our JavaScript. You should keep this in mind ;)

We don't have any tests besides integration for JavaScript but we'll more than likely be using things like Jasmine for JavaScript testing.

As a side note, we intend on starting to use CoffeeScript.

CSS
--

* [Jammit](http://documentcloud.github.io/jammit/)
* CSS2 & 3
* [SASS](http://sass-lang.com/)
* [BrowserStack](http://www.browserstack.com/) for cross-browser testing

We also occassionally use [Twitter Bootstrap](http://twitter.github.io/bootstrap/) for some of our internal tools ;)

Continuous Integration
--

We are moving toward a [continuous integration](http://en.wikipedia.org/wiki/Continuous_integration) workflow, so it's very important to have strong tests, and comprehensive test coverage. 

Eventually, we will be using services like [Travis CI](https://travis-ci.org/) to monitor the current build-state of our app.
