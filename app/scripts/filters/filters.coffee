"use strict"
towPlayerApp = angular.module "towPlayerApp"
# Filter to convert milliseconds to hours, minutes, seconds
towPlayerApp.filter "mediaTime", ->
  (ms) ->
    hours = Math.floor(ms / 36e5)
    mins = "0" + Math.floor((ms % 36e5) / 6e4)
    secs = "0" + Math.floor((ms % 6e4) / 1000)
    mins = mins.substr(mins.length - 2)
    secs = secs.substr(secs.length - 2)
    unless isNaN(secs)
      if hours
        hours + ":" + mins + ":" + secs
      else
        mins + ":" + secs
    else
      "00:00"