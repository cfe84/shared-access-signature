crypto = require "crypto-js"

sas = (namespace, keyname, keyvalue, date) ->
  hash = crypto.HmacSHA256 namespace + "\n" + date.getTime(), keyvalue
  hash64 = crypto.enc.Base64.stringify hash
  "SharedAccessSignature sr=#{encodeURI namespace}&sig=#{encodeURIComponent hash64}&se=#{date}&skn=#{keyname}"

module.exports = sas