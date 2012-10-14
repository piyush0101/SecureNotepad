require 'openssl'
require 'digest/sha2'

module Encryption
  class Encrypter

  public
    def encrypt(credentials, text)
      text
      #cipher = OpenSSL::Cipher.new('aes-192-cbc')
      #cipher.encrypt
      #cipher.key=Digest::SHA256.digest("super secret password")
      #encrypted= cipher<<text
    end

  private
    def generateKeys(credentials)
      first_pass = hash(SALT3 +credentials+ SALT2)
      for i in 2..5

      end
    end

    def hash(text)
      text_bytes = text.to_s.bytes
      digest = Digest::MD5.hexdigest(text_bytes)
    end
  end
end