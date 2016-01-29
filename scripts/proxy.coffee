proxy = require 'proxy-agent'

module.exports = (robot) ->
  robot.globalHttpOptions.httpAgent  = proxy(process.env.HUBOT_PROXY, false)
  robot.globalHttpOptions.httpsAgent = proxy(process.env.HUBOT_PROXY, true)
