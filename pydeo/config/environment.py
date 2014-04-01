from pydeo.config import settings

if settings.environment == 'production':
    import pydeo.config.environments.production as env
elif settings.environment == 'development':
    import pydeo.config.environments.development as env
elif settings.environment == 'test':
    import pydeo.config.environments.test as env
else:
    raise RuntimeError("Environment not set or incorrect")

server = env.server
debug = env.debug
reloader = env.reloader
db_url = env.db_url
db_echo = env.db_echo
