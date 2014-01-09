angular.module('templates', ['views/about.html', 'views/playlist.html', 'views/programs.html', 'views/tow-player-now-playing.html', 'views/tow-player-playlist.html', 'views/tow-player-track.html', 'views/tow-player.html'])

angular.module("views/about.html", []).run(["$templateCache", ($templateCache) ->
  $templateCache.put("views/about.html",
    "<h1>About this site</h1>\n" +
    "<img src=\"http://lorempixel.com/g/960/200/abstract/\" />\n" +
    "<div id=\"lipsum\">\n" +
    "<p>\n" +
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam non purus venenatis, scelerisque sem quis, porttitor sem. Cras quis sapien in lacus dignissim iaculis. Nullam pharetra dolor nec lorem dapibus, a mattis mi tristique. Morbi placerat non libero vel rutrum. Phasellus congue fermentum pretium. Duis faucibus elementum augue, ac vestibulum quam. Pellentesque sit amet aliquam ante. In non magna ut sem viverra gravida. Aenean urna ipsum, congue sed risus in, fringilla fringilla mi. Nulla ut justo iaculis, malesuada dolor ut, ultrices libero. Etiam lorem metus, scelerisque et risus quis, egestas iaculis orci. Sed at metus sed est blandit scelerisque non vitae diam. Duis vel tincidunt mauris. Aenean elit metus, placerat sed nisi eget, bibendum laoreet purus. Duis eu nisi ut augue fringilla eleifend ut at ante.\n" +
    "</p>\n" +
    "<p>\n" +
    "Nam id eros ut ipsum ultricies varius vel vestibulum nibh. Duis ac urna in tortor ullamcorper volutpat. Fusce id mi ut risus faucibus aliquet a non orci. Duis quis leo posuere, commodo tortor nec, ornare orci. Duis dapibus ultrices mi, ac interdum mi placerat nec. Donec vel orci et massa facilisis dapibus id sit amet purus. Integer gravida erat eget lacus tempor aliquet. Donec a commodo est. Etiam posuere ullamcorper velit, a tincidunt tellus egestas sit amet. Sed dictum erat eu purus bibendum ullamcorper. Suspendisse faucibus sagittis quam, sit amet ornare nulla cursus eget. Donec faucibus vestibulum augue a hendrerit. Integer sodales id lectus volutpat euismod. Aenean nec gravida nunc, vel rutrum massa.\n" +
    "</p>\n" +
    "<p>\n" +
    "Aliquam ac est quis magna dapibus egestas. Vestibulum tristique enim enim, a egestas risus rhoncus eget. Quisque sodales feugiat fermentum. Aenean nulla felis, euismod in purus et, congue tempus nunc. Etiam pretium felis non ultrices accumsan. Duis imperdiet mattis dapibus. Proin vitae eros quis velit eleifend fermentum. Sed posuere metus id metus aliquam, condimentum rhoncus est venenatis. Maecenas dolor nibh, vestibulum in commodo sed, venenatis sed urna.\n" +
    "</p>\n" +
    "<p>\n" +
    "Phasellus pulvinar sollicitudin odio, vel viverra quam fermentum quis. Pellentesque tristique arcu mauris, et pellentesque risus feugiat nec. Proin non quam ante. Donec luctus odio et fermentum iaculis. Duis nibh arcu, luctus ut hendrerit eu, imperdiet sed lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin semper facilisis ultricies. Mauris ullamcorper vulputate vulputate. Aenean ultrices sapien gravida nunc placerat varius. Etiam velit leo, egestas sit amet libero vitae, auctor faucibus dui. Morbi dignissim diam eget volutpat rutrum. Aenean id facilisis quam. Nam cursus massa eu neque aliquet, ac ornare eros hendrerit. Duis vitae purus enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n" +
    "</p>\n" +
    "<p>\n" +
    "Mauris sed libero ut massa auctor pretium at eu risus. Maecenas gravida consectetur odio eu facilisis. Aenean gravida quam in ullamcorper tempor. Mauris dignissim adipiscing dui, eget porttitor magna dictum tincidunt. In pellentesque, ante vitae ultricies molestie, nulla ante dignissim lorem, id eleifend metus ipsum nec massa. Duis felis arcu, ultrices at massa ac, elementum blandit eros. Nunc convallis vulputate orci, non ullamcorper erat viverra et. Ut vel dolor eleifend, feugiat magna porttitor, condimentum nibh. Donec sapien magna, bibendum iaculis luctus ut, sollicitudin vitae sem. Sed ipsum nunc, consectetur a blandit a, porttitor nec mi.\n" +
    "</p></div>")
])

angular.module("views/playlist.html", []).run(["$templateCache", ($templateCache) ->
  $templateCache.put("views/playlist.html",
    "<h1>Playlist</h1>\n" +
    "<img src=\"http://lorempixel.com/g/960/200/abstract/\" />\n" +
    "<div id=\"lipsum\">\n" +
    "<p>\n" +
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam non purus venenatis, scelerisque sem quis, porttitor sem. Cras quis sapien in lacus dignissim iaculis. Nullam pharetra dolor nec lorem dapibus, a mattis mi tristique. Morbi placerat non libero vel rutrum. Phasellus congue fermentum pretium. Duis faucibus elementum augue, ac vestibulum quam. Pellentesque sit amet aliquam ante. In non magna ut sem viverra gravida. Aenean urna ipsum, congue sed risus in, fringilla fringilla mi. Nulla ut justo iaculis, malesuada dolor ut, ultrices libero. Etiam lorem metus, scelerisque et risus quis, egestas iaculis orci. Sed at metus sed est blandit scelerisque non vitae diam. Duis vel tincidunt mauris. Aenean elit metus, placerat sed nisi eget, bibendum laoreet purus. Duis eu nisi ut augue fringilla eleifend ut at ante.\n" +
    "</p>\n" +
    "<p>\n" +
    "Nam id eros ut ipsum ultricies varius vel vestibulum nibh. Duis ac urna in tortor ullamcorper volutpat. Fusce id mi ut risus faucibus aliquet a non orci. Duis quis leo posuere, commodo tortor nec, ornare orci. Duis dapibus ultrices mi, ac interdum mi placerat nec. Donec vel orci et massa facilisis dapibus id sit amet purus. Integer gravida erat eget lacus tempor aliquet. Donec a commodo est. Etiam posuere ullamcorper velit, a tincidunt tellus egestas sit amet. Sed dictum erat eu purus bibendum ullamcorper. Suspendisse faucibus sagittis quam, sit amet ornare nulla cursus eget. Donec faucibus vestibulum augue a hendrerit. Integer sodales id lectus volutpat euismod. Aenean nec gravida nunc, vel rutrum massa.\n" +
    "</p>\n" +
    "<p>\n" +
    "Aliquam ac est quis magna dapibus egestas. Vestibulum tristique enim enim, a egestas risus rhoncus eget. Quisque sodales feugiat fermentum. Aenean nulla felis, euismod in purus et, congue tempus nunc. Etiam pretium felis non ultrices accumsan. Duis imperdiet mattis dapibus. Proin vitae eros quis velit eleifend fermentum. Sed posuere metus id metus aliquam, condimentum rhoncus est venenatis. Maecenas dolor nibh, vestibulum in commodo sed, venenatis sed urna.\n" +
    "</p>\n" +
    "<p>\n" +
    "Phasellus pulvinar sollicitudin odio, vel viverra quam fermentum quis. Pellentesque tristique arcu mauris, et pellentesque risus feugiat nec. Proin non quam ante. Donec luctus odio et fermentum iaculis. Duis nibh arcu, luctus ut hendrerit eu, imperdiet sed lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin semper facilisis ultricies. Mauris ullamcorper vulputate vulputate. Aenean ultrices sapien gravida nunc placerat varius. Etiam velit leo, egestas sit amet libero vitae, auctor faucibus dui. Morbi dignissim diam eget volutpat rutrum. Aenean id facilisis quam. Nam cursus massa eu neque aliquet, ac ornare eros hendrerit. Duis vitae purus enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n" +
    "</p>\n" +
    "<p>\n" +
    "Mauris sed libero ut massa auctor pretium at eu risus. Maecenas gravida consectetur odio eu facilisis. Aenean gravida quam in ullamcorper tempor. Mauris dignissim adipiscing dui, eget porttitor magna dictum tincidunt. In pellentesque, ante vitae ultricies molestie, nulla ante dignissim lorem, id eleifend metus ipsum nec massa. Duis felis arcu, ultrices at massa ac, elementum blandit eros. Nunc convallis vulputate orci, non ullamcorper erat viverra et. Ut vel dolor eleifend, feugiat magna porttitor, condimentum nibh. Donec sapien magna, bibendum iaculis luctus ut, sollicitudin vitae sem. Sed ipsum nunc, consectetur a blandit a, porttitor nec mi.\n" +
    "</p></div>")
])

angular.module("views/programs.html", []).run(["$templateCache", ($templateCache) ->
  $templateCache.put("views/programs.html",
    "<h1>Programs</h1>\n" +
    "<img src=\"http://lorempixel.com/g/960/200/abstract/\" />\n" +
    "<div id=\"lipsum\">\n" +
    "<p>\n" +
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam non purus venenatis, scelerisque sem quis, porttitor sem. Cras quis sapien in lacus dignissim iaculis. Nullam pharetra dolor nec lorem dapibus, a mattis mi tristique. Morbi placerat non libero vel rutrum. Phasellus congue fermentum pretium. Duis faucibus elementum augue, ac vestibulum quam. Pellentesque sit amet aliquam ante. In non magna ut sem viverra gravida. Aenean urna ipsum, congue sed risus in, fringilla fringilla mi. Nulla ut justo iaculis, malesuada dolor ut, ultrices libero. Etiam lorem metus, scelerisque et risus quis, egestas iaculis orci. Sed at metus sed est blandit scelerisque non vitae diam. Duis vel tincidunt mauris. Aenean elit metus, placerat sed nisi eget, bibendum laoreet purus. Duis eu nisi ut augue fringilla eleifend ut at ante.\n" +
    "</p>\n" +
    "<p>\n" +
    "Nam id eros ut ipsum ultricies varius vel vestibulum nibh. Duis ac urna in tortor ullamcorper volutpat. Fusce id mi ut risus faucibus aliquet a non orci. Duis quis leo posuere, commodo tortor nec, ornare orci. Duis dapibus ultrices mi, ac interdum mi placerat nec. Donec vel orci et massa facilisis dapibus id sit amet purus. Integer gravida erat eget lacus tempor aliquet. Donec a commodo est. Etiam posuere ullamcorper velit, a tincidunt tellus egestas sit amet. Sed dictum erat eu purus bibendum ullamcorper. Suspendisse faucibus sagittis quam, sit amet ornare nulla cursus eget. Donec faucibus vestibulum augue a hendrerit. Integer sodales id lectus volutpat euismod. Aenean nec gravida nunc, vel rutrum massa.\n" +
    "</p>\n" +
    "<p>\n" +
    "Aliquam ac est quis magna dapibus egestas. Vestibulum tristique enim enim, a egestas risus rhoncus eget. Quisque sodales feugiat fermentum. Aenean nulla felis, euismod in purus et, congue tempus nunc. Etiam pretium felis non ultrices accumsan. Duis imperdiet mattis dapibus. Proin vitae eros quis velit eleifend fermentum. Sed posuere metus id metus aliquam, condimentum rhoncus est venenatis. Maecenas dolor nibh, vestibulum in commodo sed, venenatis sed urna.\n" +
    "</p>\n" +
    "<p>\n" +
    "Phasellus pulvinar sollicitudin odio, vel viverra quam fermentum quis. Pellentesque tristique arcu mauris, et pellentesque risus feugiat nec. Proin non quam ante. Donec luctus odio et fermentum iaculis. Duis nibh arcu, luctus ut hendrerit eu, imperdiet sed lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin semper facilisis ultricies. Mauris ullamcorper vulputate vulputate. Aenean ultrices sapien gravida nunc placerat varius. Etiam velit leo, egestas sit amet libero vitae, auctor faucibus dui. Morbi dignissim diam eget volutpat rutrum. Aenean id facilisis quam. Nam cursus massa eu neque aliquet, ac ornare eros hendrerit. Duis vitae purus enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n" +
    "</p>\n" +
    "<p>\n" +
    "Mauris sed libero ut massa auctor pretium at eu risus. Maecenas gravida consectetur odio eu facilisis. Aenean gravida quam in ullamcorper tempor. Mauris dignissim adipiscing dui, eget porttitor magna dictum tincidunt. In pellentesque, ante vitae ultricies molestie, nulla ante dignissim lorem, id eleifend metus ipsum nec massa. Duis felis arcu, ultrices at massa ac, elementum blandit eros. Nunc convallis vulputate orci, non ullamcorper erat viverra et. Ut vel dolor eleifend, feugiat magna porttitor, condimentum nibh. Donec sapien magna, bibendum iaculis luctus ut, sollicitudin vitae sem. Sed ipsum nunc, consectetur a blandit a, porttitor nec mi.\n" +
    "</p></div>")
])

angular.module("views/tow-player-now-playing.html", []).run(["$templateCache", ($templateCache) ->
  $templateCache.put("views/tow-player-now-playing.html",
    "<div id=\"tow-now-playing\" class=\"tow-now-playing\">\n" +
    "<article class=\"tow-player\">\n" +
    "  <div class=\"\">\n" +
    "    <div class=\"\">\n" +
    "      <div class=\"controls fl\">\n" +
    "        <a \n" +
    "          title=\"Previous\"\n" +
    "          class=\"control previous\"\n" +
    "          ng-show=\"playlist\"\n" +
    "          ng-click=\"player.scope.previous()\">\n" +
    "      \n" +
    "          <i class=\"icon-previous\"></i>\n" +
    "            \n" +
    "        </a>\n" +
    "        <a\n" +
    "          title=\"Play\"\n" +
    "          class=\"control play\"\n" +
    "          \n" +
    "          ng-click=\"player.scope.play()\"\n" +
    "          ng-hide=\"player.track==player.scope.track && player.playing\">\n" +
    "          \n" +
    "          <i class=\"icon-play\"></i>\n" +
    "            \n" +
    "        </a>\n" +
    "        <a  \n" +
    "          title=\"Pause\"\n" +
    "          class=\"control pause\"\n" +
    "          \n" +
    "          ng-click=\"player.scope.pause()\"\n" +
    "          ng-show=\"player.track==player.scope.track && player.playing\">\n" +
    "          \n" +
    "          <i class=\"icon-pause\"></i>\n" +
    "            \n" +
    "        </a>\n" +
    "        <a\n" +
    "          title=\"Loading\"\n" +
    "          class=\"control loading\"\n" +
    "\n" +
    "          ng-show=\"loading\">\n" +
    "          \n" +
    "          <i class=\"icon-loading\"></i>            \n" +
    "        </a>\n" +
    "        <a  \n" +
    "          title=\"Next\"\n" +
    "          class=\"control next\"\n" +
    "          ng-show=\"playlist\"\n" +
    "          ng-click=\"player.scope.next()\">\n" +
    "          \n" +
    "          \n" +
    "          <i class=\"icon-next\"></i>\n" +
    "            \n" +
    "        </a>\n" +
    "      </div>\n" +
    "      <div class=\"title fl\">\n" +
    "        {{ player.scope.track.title }}\n" +
    "      </div>\n" +
    "    </div>\n" +
    "    \n" +
    "    <div class=\"playback\">\n" +
    "      <div class=\"playback-time\">\n" +
    "        <small class=\"time\">{{ player.scope.currentTime | mediaTime }}&nbsp;|&nbsp;</small><small class=\"duration\">{{ player.scope.duration | mediaTime }}</small>\n" +
    "      </div>\n" +
    "      <progress class=\"progress progress-back progress-fore progress-thin\" value=\"{{ player.scope.currentTime / player.scope.duration}}\" ng-click=\"player.scope.seekTo($event)\">{{ player.scope.currentTime / player.scope.duration}}</progress>\n" +
    "    </div>\n" +
    "\n" +
    "  </div>\n" +
    "</article>\n" +
    "</div>")
])

angular.module("views/tow-player-playlist.html", []).run(["$templateCache", ($templateCache) ->
  $templateCache.put("views/tow-player-playlist.html",
    "<ul class=\"\">\n" +
    "  <li class=\"\" ng-repeat=\"track in playlist.tracks | filter:playlistFilter\">\n" +
    "  \n" +
    "    <div class=\"program\" ng-click=\"play(track)\" ng-class=\"{ 'playing': (player.playing || player.paused) == track }\">\n" +
    "      <a title=\"{{ track.title }}\" class=\"mp3\">\n" +
    "        <img class=\"program-image\" src=\"http://lorempixel.com/g/400/200/abstract/\" alt=\"{{ track.title }}\" >\n" +
    "      </a>\n" +
    "      <a>\n" +
    "        {{ track.title }}\n" +
    "      </a>\n" +
    "    </div>\n" +
    "    \n" +
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
    "<div class=\"search\">\n" +
    "	<input type=\"text\" id=\"search\" placeholder=\"Search for Things\" ng-model=\"playlistFilter\">\n" +
    "</div>\n" +
    "  <div class=\"\">\n" +
    "    <div class=\"\">\n" +
    "      <div class=\"controls fl\">\n" +
    "        <a \n" +
    "          title=\"Previous\"\n" +
    "          class=\"control previous\"\n" +
    "          ng-show=\"playlist\"\n" +
    "          ng-click=\"previous()\">\n" +
    "      \n" +
    "          <i class=\"icon-previous\"></i>\n" +
    "            \n" +
    "        </a>\n" +
    "        <a\n" +
    "          title=\"Play\"\n" +
    "          class=\"control play\"\n" +
    "          \n" +
    "          ng-click=\"play()\"\n" +
    "          ng-hide=\"player.track==track && player.playing\">\n" +
    "          \n" +
    "          <i class=\"icon-play\"></i>\n" +
    "            \n" +
    "        </a>\n" +
    "        <a  \n" +
    "          title=\"Pause\"\n" +
    "          class=\"control pause\"\n" +
    "          \n" +
    "          ng-click=\"pause()\"\n" +
    "          ng-show=\"player.track==track && player.playing\">\n" +
    "          \n" +
    "          <i class=\"icon-pause\"></i>\n" +
    "            \n" +
    "        </a>\n" +
    "        <a\n" +
    "          title=\"Loading\"\n" +
    "          class=\"control loading\"\n" +
    "\n" +
    "          ng-show=\"loading\">\n" +
    "          \n" +
    "          <i class=\"icon-loading\"></i>            \n" +
    "        </a>\n" +
    "        <a  \n" +
    "          title=\"Next\"\n" +
    "          class=\"control next\"\n" +
    "          ng-show=\"playlist\"\n" +
    "          ng-click=\"next()\">\n" +
    "          \n" +
    "          \n" +
    "          <i class=\"icon-next\"></i>\n" +
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
