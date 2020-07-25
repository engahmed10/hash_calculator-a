require 'digest/sha3'
class Hashcalc < ApplicationRecord
    def sha2(text)
        Digest::SHA2.new(512).hexdigest(text)
        Digest::SHA512.hexdigest(text)
     end
      
     def md5(text)
        md5=Digest::MD5.new   
        md5.hexdigest(text)
     end

     def rmd160(text)
        rmd160 = Digest::RMD160.new  
        rmd160.hexdigest(text) 
     end


     def sha1(text)
        sha1 = Digest::SHA1.new  
        sha1.hexdigest(text) 
     end

     def sha3(text) 
        sha3=Digest::SHA3.hexdigest(text)  
     end
end



