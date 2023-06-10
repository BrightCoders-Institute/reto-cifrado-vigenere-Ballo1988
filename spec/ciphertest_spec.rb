require 'rspec'
require_relative '/home/braulio/reto-cifrado-vigenere-Ballo1988/cipher.rb'

describe VigenereCipher do
  describe '#inicializar' do
    it 'guarda el mensaje y la llave, además de crear sus respectivos arrays' do
      allow_any_instance_of(Kernel).to receive(:gets).and_return("HELLO\n", "KEY\n")
      cipher = VigenereCipher.new
      cipher.inicializar

      expect($str).to eq 'HELLO'
      expect($keyword).to eq 'KEY'
      expect($keywordarr).to eq ['K', 'E', 'Y']
      expect($msg).to eq ['H', 'E', 'L', 'L', 'O']
    end
  end

  describe '#generatekey ' do
    it 'genera el mesnaje basado en el largo de la llave y los iguala si no
    lo están' do
      cipher = VigenereCipher.new
      $msg = ['H', 'E', 'L', 'L', 'O']
      $keywordarr = ['K', 'E', 'Y']
      key = [5]

      cipher.generatekey(key)

      expect(key).to eq ['K', 'E', 'Y', 'K', 'E']
    end
  end

  describe '#encriptar ' do
    it 'genera el mensaje encriptado' do
      cipher = VigenereCipher.new
      $msg = ['H', 'E', 'L', 'L', 'O']
      $keywordarr = ['K', 'E', 'Y']
      key = [5]
      cipher.generatekey(key)
      cipher.encriptar(key)
      expect($ciphered.join).to eq "RIJVS"
    end
  end
  describe '#desncriptar ' do
    it 'convierte el mensaje cifrado a su origen' do
      cipher = VigenereCipher.new
      $msg = ['H', 'E', 'L', 'L', 'O']
      $keywordarr = ['K', 'E', 'Y']
      key = [5]
      cipher.generatekey(key)
      cipher.encriptar(key)
      cipher.desencriptar(key)
      expect($deciphered.join).to eq "HELLO"
    end
  end
end