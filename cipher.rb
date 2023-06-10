class VigenereCipher
  def inicializar
    p 'Ingrese mensage'
    $str = gets.chop
    p 'Ingrese clave'
    $keyword = gets.chop
    $keywordarr = $keyword.split('')
    $msg = $str.chars
    key = [$msg.length]
    $ciphered = [$msg.length]
    $deciphered = [$msg.length]
    generatekey(key)
  end

  def generatekey(key)
    x = 0
    y = 0
    while x < $msg.length
      y = 0 if y == $keywordarr.length
      key[x] = $keywordarr[y]
      x += 1
      y += 1
    end
    encriptar(key)
    prueba(key)
  end

  def prueba(key)
    p 'Para desencriptar el mensaje, ingrese la clave: '
    cheat = gets.chop
    if cheat == $keyword
      desencriptar(key)
    else
      p "#{$keywordarr.join}"
    end
  end

  def encriptar(key)
    $msg.length.times do |i|
      $ciphered[i] = (($msg[i].ord + key[i].ord) % 26 + 'A'.ord).chr
    end
    p "Mensaje encriptado: #{$ciphered.join}"
  end

  def desencriptar(key)
    $msg.length.times do |i|
      $deciphered[i] = ((($ciphered[i].ord - key[i].ord) + 26) % 26 + 'A'.ord).chr
    end
    p "Mensaje desencriptado #{$deciphered.join}"
  end
end

cifrar = VigenereCipher.new
cifrar.inicializar
