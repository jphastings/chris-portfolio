# encoding: utf-8
require 'sinatra/base'
require File.join(File.dirname(__FILE__), 'environment')
require 'json'
require 'mustache/sinatra'

class ChrisHS < Sinatra::Base
	register Mustache::Sinatra
	require './views/layout'

	set :mustache, {
		:views     => './views',
		:templates => './public/templates'
	}

	get '/' do
		mustache :home
	end
end