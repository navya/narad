# Description:
#   Make "I barely knew her!" jokes
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   functor - hubot says 'Functor? I barely knew her!'
#
# Author:
#   vikraman

module.exports = (robot) ->
  robot.hear /\b((?:[A-Za-z0-9]+){4,9}(?:or|er))(?:s?)(?:[^\w\s])?\b/, (msg) ->
    name = msg.match[1]
    word = name[0].toUpperCase() + name[1..-1]
    joke = msg.random [
        "I barely knew her!"
        , "But I barely know her!"
        , "I just met her!"
        , "But I only just met her!"
        ]
    if Math.random() < 0.314 then msg.send "#{word}? #{joke}"
