# Alphasights Technical Exercise


Using Ruby on Rails we would like you to create a simple bookmarking tool. The
application should fulfill the requirements below. The source code must be placed in a
public repo on GitHub, instructions can be found here:
http://help.github.com/creating-a-repo/. We only want to receive a link to the repo.

* Enter a URL and tags and the bookmark is created
* The bookmark should be modeled as belonging to a site. The URL needs to be
parsed to extract the domain, and if a site corresponding to that domain
doesn't exist in the database then it must be created.
* When a bookmark is created it is attached to a corresponding site, it has tags
and it also has shortening e.g using tinyurl, also if it pulled in the URL to get
the page title and further meta data that would be cool!
* In the interface it would be good to be able to list sites and when we view a
site (by clicking in the site name) we see a list of all bookmarks belonging to a
site
* Viewing an actual bookmark should display its URL, title, tags, shortening
* Now I want to be able to search bookmarks and sites based on any of my data
that I have stored (no 3rd party free text search stuff here please).
* Now I would like this search to be extracted into some kind of generic search
module (no plugins or free text search engines here please). Basically I want
to be able to search all the fields (SQL LIKE) of any model. This will give me
instant search functionality with a nice clean API to any model I choose to mix
it into. Note: This is a contrived example and in real life you are likely to use a
free text search gem but I am looking for some understanding of meta
programming, API design, and a bit more advanced Ruby than that required
for the previous points.


We are looking for a simple, clean, elegant design, use of gems and plugins (unless
otherwise stated) where necessary, tests and all round understanding of the full stack
e.g. Ruby, Rails, CSS (or SASS), HTML (or HAML), JavaScript.
