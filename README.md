Google-Plus
===========

A light wrapper around the new Google+ API.  It's late, this is really rough.

Installation
------------

TODO Gem

Usage
-----

    require "google_plus"
    GooglePlus.connect("your_api_key")
    GooglePlus::People.get("111277284611154414539")
    GooglePlus::Activities.list("111277284611154414539")

TODO
----

* Docs
* Get rid of class var for api key
* tests (ahem)
