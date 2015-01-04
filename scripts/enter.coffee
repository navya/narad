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
    user = msg.message.user.name
    room = msg.message.room
    unless user == robot.name
      msg.sendPrivate "#{msg.random greetings}, #{user}"
      msg.sendPrivate "Welcome to #{room}!"
      msg.sendPrivate "Feel free to look around or ask questions."
      msg.sendPrivate "For help, see http://narad.hackconf.in/help/"
