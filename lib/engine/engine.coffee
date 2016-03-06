

async = require 'async'
Rater = require './rater'
Similars = require './similars'
Suggestions = require './suggestions'

module.exports = class Engine
	constructor: ->
		@likes = new Rater @, 'likes'
		@dislikes = new Rater @, 'dislikes'
		@similars = new Similars @
		@suggestions = new Suggestions @

