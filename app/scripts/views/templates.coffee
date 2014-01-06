angular.module('templates', ['views/tow-player-playlist.html', 'views/tow-player-track.html', 'views/tow-player.html'])

angular.module("views/tow-player-playlist.html", []).run(["$templateCache", ($templateCache) ->
  $templateCache.put("views/tow-player-playlist.html",
    "<ol class=\"\">\n" +
    "  <li class=\"\" ng-repeat=\"track in playlist.tracks\">\n" +
    "    <a  href=\"\"\n" +
    "        class=\"\"\n" +
    "        \n" +
    "        ng-click=\"play(track)\"\n" +
    "        ng-class=\"{ 'playing': (player.playing || player.paused) == track }\" >\n" +
    "        {{ track.title }}\n" +
    "    </a>\n" +
    "  </li>\n" +
    "</ol>\n" +
    "")
])

angular.module("views/tow-player-track.html", []).run(["$templateCache", ($templateCache) ->
  $templateCache.put("views/tow-player-track.html",
    "<article class=\"tow-player\">\n" +
    "  <div class=\"\">\n" +
    "    <div class=\"\">\n" +
    "      <div class=\"controls fl\">\n" +
    "        <a\n" +
    "          title=\"Play\"\n" +
    "          class=\"control play\"\n" +
    "          \n" +
    "          ng-click=\"play()\"\n" +
    "          ng-hide=\"player.track==track\">\n" +
    "          \n" +
    "          <i class=\"icon-play\">&gt;</i>\n" +
    "            \n" +
    "        </a>\n" +
    "        <a  \n" +
    "          title=\"Pause\"\n" +
    "          class=\"control pause\"\n" +
    "          \n" +
    "          ng-click=\"pause()\"\n" +
    "          ng-show=\"player.track==track && player.playing && !loading\">\n" +
    "          \n" +
    "          <i class=\"icon-pause\">&time;</i>\n" +
    "            \n" +
    "        </a>\n" +
    "        <a\n" +
    "          title=\"Loading\"\n" +
    "          class=\"control loading\"\n" +
    "          \n" +
    "          ng-show=\"loading\">\n" +
    "          \n" +
    "          <i class=\"icon-loading\">&asymp;</i>\n" +
    "            \n" +
    "        </a>\n" +
    "      </div>\n" +
    "      <div class=\"title fl\" ng-hide=\"hide-title\">\n" +
    "        {{ track.title }}\n" +
    "      </div>\n" +
    "    </div>\n" +
    "  </div>\n" +
    "</article>")
])

angular.module("views/tow-player.html", []).run(["$templateCache", ($templateCache) ->
  $templateCache.put("views/tow-player.html",
    "<article class=\"tow-player\">\n" +
    "  <div class=\"\">\n" +
    "    <div class=\"\">\n" +
    "      <div class=\"controls fl\">\n" +
    "        <a \n" +
    "          title=\"Previous\"\n" +
    "          class=\"control previous\"\n" +
    "          ng-show=\"playlist\"\n" +
    "          ng-click=\"previous()\">\n" +
    "      \n" +
    "          <i class=\"icon-previous\">Previous</i>\n" +
    "            \n" +
    "        </a>\n" +
    "        <a\n" +
    "          title=\"Play\"\n" +
    "          class=\"control play\"\n" +
    "          \n" +
    "          ng-click=\"play()\"\n" +
    "          ng-hide=\"player.track==track && player.playing\">\n" +
    "          \n" +
    "          <i class=\"icon-play\">Play</i>\n" +
    "            \n" +
    "        </a>\n" +
    "        <a  \n" +
    "          title=\"Pause\"\n" +
    "          class=\"control pause\"\n" +
    "          \n" +
    "          ng-click=\"pause()\"\n" +
    "          ng-show=\"player.track==track && player.playing\">\n" +
    "          \n" +
    "          <i class=\"icon-pause\">Pause</i>\n" +
    "            \n" +
    "        </a>\n" +
    "        <a\n" +
    "          title=\"Loading\"\n" +
    "          class=\"control loading\"\n" +
    "\n" +
    "          ng-show=\"loading\">\n" +
    "          \n" +
    "          <i class=\"icon-loading\">Loading...</i>            \n" +
    "        </a>\n" +
    "        <a  \n" +
    "          title=\"Next\"\n" +
    "          class=\"control next\"\n" +
    "          ng-show=\"playlist\"\n" +
    "          ng-click=\"next()\">\n" +
    "          \n" +
    "          \n" +
    "          <i class=\"icon-next\">Next</i>\n" +
    "            \n" +
    "        </a>\n" +
    "      </div>\n" +
    "      <div class=\"title fl\">\n" +
    "        {{ track.title }}\n" +
    "      </div>\n" +
    "    </div>\n" +
    "    \n" +
    "    <div class=\"playback\">\n" +
    "      <div class=\"playback-time\">\n" +
    "        <small class=\"time\">{{ currentTime | mediaTime }}&nbsp;|&nbsp;</small><small class=\"duration\">{{ duration | mediaTime }}</small>\n" +
    "      </div>\n" +
    "      <progress class=\"progress progress-back progress-fore progress-thin\" value=\"{{ currentTime / duration}}\" ng-click=\"seekTo($event)\">{{ currentTime / duration}}</progress>\n" +
    "    </div>\n" +
    "    <div tow-player-playlist></div>\n" +
    "  </div>\n" +
    "</article>")
])
