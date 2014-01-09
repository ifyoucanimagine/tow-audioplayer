"use strict"

towPlayerApp = angular.module("towPlayerApp")
soundcloudDataLocation = "https://api.soundcloud.com/resolve.json"

#.controller 'TowPlayerCtrl', ->
#  return
#things = (x for x in list) nice

towPlayerApp.directive "towPlayer", ($document, $http, towPlayerService) ->

  player = towPlayerService.player
  audio = towPlayerService.audio
  
  restrict: "AE"
  scope: {}
  templateUrl: "views/tow-player.html"
  link: (scope, elem, attrs) ->
  
    scope.clientId = player.clientId = attrs.clientId
    
    scope.elem = elem
    scope.index = 0
    scope.master = attrs.master
    
    scope.play = (track="") ->
      scope.track = track if track
      player.setScope scope
      player.play scope.track
      
      scope.index = scope.playlist.tracks.indexOf track if scope.playlist
    
    scope.pause = () ->
      player.pause()
      
    scope.next = () ->
      if scope.playlist and scope.index+1 < scope.playlist.tracks.length
        scope.play scope.playlist.tracks[++scope.index]
      
    
    scope.previous = () ->
      if scope.playlist and scope.index > 0
        scope.play scope.playlist.tracks[--scope.index]
    
    
    params =
      url: attrs.src
      client_id: attrs.clientId
      callback: "JSON_CALLBACK"

    soundcloudDataLocation = (if (attrs.srcService) then attrs.srcService else soundcloudDataLocation)
    
    $http.jsonp attrs.srcService,
      params: params
    .success (data) ->
      console.log "data: ", data
      if data.tracks
        scope.playlist = data
        scope.track = scope.playlist.tracks[0]
        player.addScope scope
        #remove this
        player.scope = scope
      else if data instanceof Array
        scope.playlist = {}
        scope.playlist.tracks = data;
        scope.track = scope.playlist.tracks[0]
        player.addScope scope
        #remove this
        player.scope = scope
      else if data.kind is "track"
        scope.track = data
        player.addScope scope
        
      else
        scope.data = data

      
    audio.addEventListener "timeupdate", (->
      if scope.track is player.track
        scope.$apply ->
          scope.currentTime = (audio.currentTime * 1000).toFixed()
          scope.duration = (audio.duration * 1000).toFixed()

    ), false
    
    scope.currentTime = 0
    scope.duration = 0
    scope.player = player
    
    scope.seekTo = ($event) ->
      xpos = $event.offsetX / $event.target.offsetWidth
      audio.currentTime = (xpos * audio.duration)
    
    audio.addEventListener "ended", (->
      scope.$apply ->
        if scope.playlist.tracks.length > 0
          player.next()
        else
          player.pause()
  
    ), false


    
  
.directive "towPlayerPlaylist", () ->
  restrict: "AE"
  replace: true
  templateUrl: "views/tow-player-playlist.html"
  link: (scope, elem, attrs) ->

.directive "towPlayerTrack", ($http, towPlayerService) ->
  restrict: "AE"
  replace: true
  scope: {}
  templateUrl: "views/tow-player-track.html"
  link: (scope, elem, attrs) ->
    player = towPlayerService.player
    
    scope.loading = true
    scope.track = null
    scope.hideTitle = attrs.hideTitle;
    scope.playing = false
    
    scope.play = ->
  
      if scope.track and not scope.loading
        scope.currentScope = player.getMaster()
        scope.playing = true
        scope.currentScope.play scope.track if scope.currentScope
      
    params =
      client_id: attrs.clientId
      callback: "JSON_CALLBACK"
      
    if attrs.track
      scope.track = attrs.track
      scope.loading = false
    else if attrs.trackId
      soundcloudDataLocation = "http://api.soundcloud.com/tracks/{attrs.trackId}.json"
    else if attrs.src
      params.url = attrs.src
      soundcloudDataLocation = (if (attrs.srcService) then attrs.srcService else soundcloudDataLocation)
    
    unless attrs.track
      $http.jsonp soundcloudDataLocation,
        params: params
      .success (data) ->
        scope.track = data
        console.log "scope: ", scope.track
        scope.loading = false
        
.directive "nowPlaying", (towPlayerService) ->
  restrict: "AE"
  scope: {}
  templateUrl: "views/tow-player-now-playing.html"
  link: (scope, elem, attrs) ->
    player = towPlayerService.player
    scope.player = player
    