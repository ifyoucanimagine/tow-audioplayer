"use strict"

towPlayerApp = angular.module "towPlayerApp"

towPlayerApp.factory 'towPlayerService', ($document)->
  audio = $document[0].createElement("audio")
  player =
    track: false
    playing: false
    paused: false
    
    master: null
    
    clientId: null
    
    players: []
    
    play: (track=null) ->
      if track is null
        track = player.track
      
      if track is null
        console.log "We should thow an error here"  
        
      player.track = track
      
      audio.src = player.track.stream_url + "?client_id=" + player.clientId  if player.paused isnt player.track
      audio.play()
      
      player.playing = player.track
      player.paused = false

    pause: ->
      audio.pause()
      if player.playing
        player.paused = player.playing
        player.playing = false

    setScope: (scope) ->
      player.scope = scope
    
    getScope: ->
      player.scope
      
    addScope: (scope) ->
      player.players.push scope
      player.master = scope if scope.master
    
    getMaster: ->
      if not player.master
        player.master = player.players[0]
        
      player.master

  towPlayerService =
    player: player
    audio: audio
    
  return towPlayerService;