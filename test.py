import unittest
from main import app

class TestYourFlaskApp(unittest.TestCase):

    def setUp(self):
        self.app = app.test_client()
        self.app.testing = True

    def test_root_endpoint(self):
        response = self.app.get('/')
        self.assertEqual(response.status_code, 200)
        self.assertIn(b'"success":true', response.data)

if __name__ == '__main__':
    unittest.main()
