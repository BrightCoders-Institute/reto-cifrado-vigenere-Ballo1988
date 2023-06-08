def cipherDecipher
  p "Ingrese mensage"
  str = gets.chop
  p "Ingrese clave"
  keyword = gets.chop
  keywordarr = keyword.split('')
  msg = str.split('')
  key = [msg.length]
  ciphered = [][msg.length]
  deciphered = [][msg.length]
  x = 0
  y = 0
  while x < msg.length
    y = 0 if y == keywordarr.length
    key[x] = keywordarr[y]
    x += 1
    y += 1
  end
  p key
end
cipherDecipher()
