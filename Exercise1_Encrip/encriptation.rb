require 'gpgme'

crypto = GPGME::Crypto.new(:armor => true)
File.open('Passwords.txt') do |file|
  cipher = crypto.encrypt(file, {:symmetric => true})
  str = cipher.read
  File.open('encriptation.txt', 'w') { |file| file.write(str) }
  puts("KEY:\n#{str}")

  cipher = GPGME::Data.new(str)
  plain = crypto.decrypt(cipher)
  puts("Plaintext:\n#{plain.read}")
end