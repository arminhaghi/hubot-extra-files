proxy = require 'proxy-agent'

module.exports = (robot) ->
  robot.globalHttpOptions.httpAgent  = proxy(process.env.http_proxy, false)
  robot.globalHttpOptions.httpsAgent = proxy(process.env.https_proxy, true)
