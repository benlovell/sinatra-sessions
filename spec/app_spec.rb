require 'spec_helper'

describe "sessions" do
 it "should display message set to the session before redirect" do
   get '/', {}, {'rack.session' => {:current_user => 1}}
   last_response.should contain('hi!')
 end
end

