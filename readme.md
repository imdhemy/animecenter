# animecenter

[![StyleCI](https://styleci.io/repos/44687688/shield)](https://styleci.io/repos/44687688)
[![Build Status](https://travis-ci.org/animecenter/animecenter.svg?branch=develop)](https://travis-ci.org/animecenter/animecenter)
[![SensioLabsInsight](https://insight.sensiolabs.com/projects/b22e1b93-dfe2-4dea-815f-900bec2d68e2/mini.png)](https://insight.sensiolabs.com/projects/b22e1b93-dfe2-4dea-815f-900bec2d68e2)

## What is animecenter?

animecenter is an anime aggregation platform.
Every link and information on animecenter is found on the open internet.
We don't host any illegal content on our server.

## What software powers animecenter?

- [Laravel](http://laravel.com) - backend.
- [Bootstrap](https://getbootstrap.com) - styling.
- [jQuery](https://jquery.con) - dynamic content.
- [Gulp](http://gulpjs.com) - automating common tasks.
- [SASS](http://sass-lang.com) - preprocessing CSS.
- [Scrapy](https://scrapy.org) - data and links aggregation.

## Development

### Setup

> [!NOTE]
> We are switching from Homestead to Docker. Only docker instructions are up to date.

- Clone the repository.
- Run `docker compose up -d` to start the containers.
- Run migrations and seeders with `docker compose exec app php artisan migrate --seed`.

#### TODO

- ⏱️[ ] Set up JS development environment.
- ⏱️[ ] Find replacement for `league/flysystem-dropbox`

### Instructions

SSH into your Homestead box with `vagrant ssh`, go to folder containing
the code with `cd /home/vagrant/animecenter` and run the following command: `gulp watch`.

- If you want to modify CSS, you can modify the .scss files inside resources/assets/sass
- If you want to modify JS, you can modify the .js files inside resources/assets/js
- If you want to modify HTML, you can modify the .blade.php files inside resources/views

## Contributions

Everyone is welcome to contribute. You can do it in the following ways:

- If you want a new feature, make an issue with all details.

- If you find a bug, make an issue describing how you came upon it and what os, browser, etc you are using.

- If you want to contribute code, fork the project, branch off of the develop branch and pick an issue to solve.
  When you are done, make a pull request. There is a higher chance for a feature to be accepted if its tested.

## To Do

- [ ] Finish the new design and new admin interface.
- [ ] Implement Reviews, and Recommendations.
- [ ] Make tests and add repository to travis.
- [ ] Make a API in Laravel.
- [ ] Use React for the frontend.

## License

animecenter is licensed under the [CPAL-1.0](http://opensource.org/licenses/CPAL-1.0) license.
For better understanding of what you can do with the codebase visit
[tldrlegal.com](https://tldrlegal.com/license/common-public-attribution-license-version-1.0-(cpal-1.0)).
