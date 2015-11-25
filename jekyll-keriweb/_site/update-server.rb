#!/usr/bin/env ruby
require 'sinatra'
require 'json'

here = File.dirname(__FILE__)
SYNC_SCRIPT = "#{here}/update-website.sh"

post '/' do
	begin
		push = JSON.parse(params[:payload])
		system(SYNC_SCRIPT)
		"ok."
	rescue
		"error."
	end
end
