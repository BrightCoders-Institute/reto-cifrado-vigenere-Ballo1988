def cipherDecipher
  p 'Ingrese mensage'
  str = gets.chop
  p 'Ingrese clave'
  keyword = gets.chop
  keywordarr = keyword.split('')
  msg = str.split('')
  key = [msg.length]
  ciphered = [msg.length]
  cipheredmsg = ''
  deciphered = [msg.length]
  decipheredmsg = ''
  x = 0
  y = 0
  while x < msg.length
    y = 0 if y == keywordarr.length
    key[x] = keywordarr[y]
    x += 1
    y += 1
  end
  msg.length.times do |i|
    ciphered[i] = (((msg[i].ord + key[i].ord) % 26 + 'A'.ord)).chr
    cipheredmsg << ciphered[i]
  end

  msg.length.times do |j|
    deciphered[j] = (((msg[j].ord - key[j].ord) + 26) % 26 + 'A'.ord)
    decipheredmsg << deciphered[j]
  end 
  p ciphered
  p decipheredmsg
  p key
end
cipherDecipher()
