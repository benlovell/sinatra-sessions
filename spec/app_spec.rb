require 'spec_helper'

describe "sessions" do
 it "should display message set to the session before redirect" do
   get '/', {}, {'rack.session' => {:blah => 'blah, blah'}}
   last_response.should contain(/blah, blah/)
 end

 it "should display message set to session" do
   get '/something', {}, {'rack.session' => {:blah => 'blah, blah'}}
   last_response.should contain(/blah, blah/)
 end
end
