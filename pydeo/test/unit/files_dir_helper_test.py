import unittest

import test_helper
assert test_helper  # silence pyflakes

from pydeo.app.helpers import files_dir_helper


class FilesDirHelperTests(unittest.TestCase):

    def test_check_dir_presence(self):
        assert files_dir_helper.check_dir_presence(['/tmp', '/usr',
                                                    '/usr/bin']) == 'OK'
        assert files_dir_helper.check_dir_presence(['/foo',
                                                    '/bar']) == '/foo'
        assert files_dir_helper.check_dir_presence(['/usr/bin',
                                                    '/bar']) == '/bar'
