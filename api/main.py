import falcon
import requests
import json
import logging
import os

class MainHandler:
	"""docstring for MainHandler"""
	def on_get(self, req, resp):
		data = "Hello Welcome to Docker -> Nginx -> Gunicorn -> Falcon"
		resp.body = data

 
api = falcon.API()
api.add_route('/', MainHandler())



