class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token

   def create
    
        @hash=Hashcalc.create(name:params[:name])
        @hashed=@hash.sha2(params[:name])
        @md5=@hash.md5(params[:name])
        @rmd160=@hash.rmd160(params[:name])
        @sha1=@hash.sha1(params[:name])
        @sha3=@hash.sha3(params[:name])
        render '/application/hello'
   end

end
