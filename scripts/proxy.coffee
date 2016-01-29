proxy = require 'proxy-agent'

module.exports = (robot) ->
  robot.globalHttpOptions.httpAgent  = new proxy(process.env.HUBOT_PROXY, false)
  robot.globalHttpOptions.httpsAgent = new proxy(process.env.HUBOT_PROXY, true)
