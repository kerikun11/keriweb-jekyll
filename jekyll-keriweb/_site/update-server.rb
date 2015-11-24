require 'sinatra'
require 'json'

dir = File.dirname(__FILE__)
SYNC_SCRIPT = "#{dir}/update-website.sh"

post "/" do
	  push = JSON.parse(params[:payload])
	    system(SYNC_SCRIPT) if push["repository"]["id"] == 11420983
end

