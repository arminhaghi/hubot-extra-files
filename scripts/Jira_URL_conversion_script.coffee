module.exports = (robot) ->

    robot.hear /EPE-\d+/i, (res) ->
        ticketId = res.match[0]
        res.send("https://jira.nordstrom.net/browse/#{ticketId}")
