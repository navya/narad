# Description:
#   Make "Kill it with fire!" jokes
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   kill - hubot says 'Kill it, Kill it with fire!'
#
# Author:
#   vikraman

module.exports = (robot) ->
  robot.hear /\bkill([A-Za-z0-9]*)\b/, (msg) ->
    if Math.random() < 0.314 then msg.send "Kill it, kill it with fire!"
