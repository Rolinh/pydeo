# README

## SYNOPSIS

**pydeo** is an application for managing media files such as movies, series and
music through a web browser.

It is written in `python` using the `bottle` framework. Its main goals are to be
simple, lightweight and easy to the eyes. Therefore, it should run on very low
power platforms which makes it ideal for micro computers such as the Raspberry
Pi.

**pydeo** uses `twitter bootstrap` and `jquery` to make the interface look nice
and ease my pain in creating a beautiful UI (yeah, I'm not a designer guy, just
a simple developer).

## DISCLAIMER

There is no release yet as I just started the project. My goal is to rapidly
release a version with very few features and improve it over time.

## TESTING THE APPLICATION

First thing you need is `python` (version 3).

Once you have `python`, you need to install `bottle`. There are several way to
achieve this. Here is the one I use and recommend:

* install `virtualenv` and `pip` if necessary
* set up a virtual environment: `virtualenv -p python .`
* activate it: `source bin/activate`
* install the required libraries through `pip`:
  `pip install -r requirements.txt`

## CONTRIBUTING

Any contribution that improves **pydeo** is welcome. :)
Feel free to contact me if you have any question or suggestion.

If you already have developed with the Ruby on Rails framework, you should then
be familiar with how I organised the sources. If not but you are familiar with
the MVC pattern, you should be fine too.
