	<!-- Fixed navbar -->
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>">JBake</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li><a href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>index.html">Spotkania</a></li>
            <li><a href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>kapitula.html">Kapituła</a></li>
            <li><a href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>prelegenci.html">Jak zostać prelegentem</a></li>
						<li><a href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>kontakt.html">Jak zostać Sponsorem</a></li>
						<li><a href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>kontakt.html">Kontakt</a></li>
						<li><a href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>kontakt.html">Miejsca spotkań</a></li>
            <li><a href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>about.html">O nas</a></li>
            <li><a href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>${config.feed_file}">Subscribe</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Choose language (wsadzić tu po prostu flagi) <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Polski</a></li>
                <li><a href="#">English</a></li>
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>
    <div class="container">
