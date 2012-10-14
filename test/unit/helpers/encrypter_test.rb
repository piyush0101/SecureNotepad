require "test/unit"
require "helpers/encrypter"

class EncrypterTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  # Fake test
  def test_basic_encryption
    encrypter = Encryption::Encrypter.new
    encrypted_text = encrypter.encrypt("piyush0101", "plain text")

    assert_equal("plain text", encrypted_text)
  end
end