require 'spec_helper'

describe "sessions" do
 it "should display message set to the session before redirect" do
   get '/'
   last_response.should contain(/blah, blah/)
 end
end

