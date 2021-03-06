
mods =  
  sha512 : require '../files/sha512.iced'
  wordarray : require '../files/wordarray.iced'
  hmac : require '../files/hmac.iced'
  aes : require '../files/aes.iced'
  twofish : require '../files/twofish.iced'
  salsa20 : require '../files/salsa20.iced'
  aes_ctr : require '../files/aes_ctr.iced'
  pbkdf2 : require '../files/pbkdf2.iced'
  triplesec : require '../files/triplesec.iced'
  drbg : require '../files/drbg.iced'
  sha3 : require '../files/sha3.iced'
  combine : require '../files/combine.iced'

{BrowserRunner} = require('iced-test')

window.onload = () ->
  br = new BrowserRunner { log : "log", rc : "rc" }
  await br.run mods, defer rc
