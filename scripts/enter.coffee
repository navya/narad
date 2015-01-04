# Description:
#   Greet people when they enter.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   None
#
# Author:
#   vikraman

greetings = ['Hi', 'Hello', 'Hey there', 'Welcome', 'I see you']

module.exports = (robot) ->
  robot.enter (msg) ->
    if (msg.message.user.name != robot.name)
      msg.send "#{msg.random greetings}, #{msg.message.user.name}"
