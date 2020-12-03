# Floor Coverage
> A web application for managers to generate schedules with an emphasis on allocating employee skills efficiently  

[Ruby on Rails](http://rubyonrails.org/) is what powers the [Floor Coverage](https://floorcoverage.herokuapp.com/) website. 

# Demo
got to [Floor Coverage](https://floorcoverage.herokuapp.com/) website, and log in with the following credentials: -

```
email: user1@email.com 
```
```
password: Pass1!
```
refer to [INSTALL.md](INSTALL.md) for more information.

# Explanation of this repository, and how it functions.

* The web site is hosted on [Heroku](https://www.heroku.com/home) with a [Postgres Service](https://www.heroku.com/postgres) provided by `Heroku`
* In order the host the web site on `Heroku`, the code base must be [containerized with docker](https://devcenter.heroku.com/articles/getting-started-with-rails6). 
All of that work is done in [production](https://github.com/nweicker/CS4360/tree/production).
* The [master](https://github.com/nweicker/CS4360) branch is for development and the [production](https://github.com/nweicker/CS4360/tree/production) branch is for publishing to `Heroku`
* The [master](https://github.com/nweicker/CS4360) branch uses `Sqlite3` and [production](https://github.com/nweicker/CS4360/tree/production) branch  uses `PostgreSQL`

# License

This software will have a FOSS License but currently pending approval from MSU Denver.
This software utilizes the [FullCalendar](https://fullcalendar.io/) javascript code that is licensed under 
 [MIT License](https://github.com/fullcalendar/fullcalendar/blob/master/LICENSE.txt).

# Installation

Since Floor Coverage uses both `PostgreSQL` and `Sqlite3` as its databases, please refer to [INSTALL.md](INSTALL.md) to set up your environment.

# Development

Pull requests are very welcome.

* Bugs are recorded in the [issue tracker](https://github.com/nweicker/CS4360/issues). 
* for question, join [discord](https://discord.gg/Tuy6gnyyan) or contact the maintainers or send an email to [floor.coveragecs4360@gmail.com](floor.coveragecs4360@gmail.com)  

More details on contributing to the code are in the [CONTRIBUTING.md](CONTRIBUTING.md) file.

# Maintainers

preferred way to get a hold of maintainer is via [discord](https://discord.gg/Tuy6gnyyan)
if you wish to become a maintainer, please contact [@OmarBitar](https://github.com/OmarBitar) 


This software was initially created for CS 4360 - Technical Software Project MSU Denver class
>Dr. Steve Beaty  
>Fall 2020  
>Metropolitan State University of Denver  

### Floor Coverage
> A web application for managers to create and modify work schedules.
Includes a "View Only" mode for employees with the calendar code to view the schedule without needing user credentials.

> Ruby on Rails

Team:  
> Omar Bitar  
> Nicole Weickert  
> Matt Sawaged  
> Victor Lazos-Aragon  
> Justin Wu
