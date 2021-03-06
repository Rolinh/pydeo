import json

from sqlalchemy.orm.exc import NoResultFound

from pydeo.app.models.movie import Movie
from pydeo.app.helpers import (
    application_helper as ah,
    movies_helper as mh
)


class MoviesAPIController():
    """Class to handle RESTful API for movies."""

    def movies(self, db):
        """Return all movies."""
        movies = db.query(Movie).all()
        return json.dumps(movies, cls=ah.AlchemyEncoder)

    def movies_title(self, db):
        """Return movies title."""
        movies = [m.title for m in db.query(Movie).all()]
        return json.dumps(movies, cls=ah.AlchemyEncoder)

    def movies_id(self, db, id):
        """Return a movie corresponding to the given id."""
        try:
            movie = db.query(Movie).filter_by(id=id).one()
        except NoResultFound:
            movie = {}
        return json.dumps(movie, cls=ah.AlchemyEncoder)

    def movies_reload(self, db):
        """Reload movie database actually fetching info from IMDB for movies
        that where not in database previously."""
        mh.update_movies_db(db)
        return "OK"

    def movies_fetch(self, db):
        """Fetches movies information online."""
        mh.fetch_movies_information(db)
        return "OK"
