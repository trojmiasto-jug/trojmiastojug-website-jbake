<%include "header.gsp"%>

	<%include "menu.gsp"%>

	<div class="page-header">
		<h1>Spotkania</h1>
	</div>
	<%published_posts.each {post ->%>
		<a href="${post.uri}"><h1>${post.title}</h1></a>
		<p>${new java.text.SimpleDateFormat("dd MMMM yyyy", Locale.ENGLISH).format(post.date)}</p>
		<p>${post.body}</p>
  	<%}%>

	<hr />
	<div class="page-sidebar">
		<div class="sidebar-sm">
			<div>twitter</div>
			<div>meetup</div>
			<div>gh</div>
			<div>mail</div>
			<div>mail-group</div>
		</div>
		<div class="page-sponsors">
			<h3>Wspierają JUG</h3>
			<div class="sponsor">
				<div><a href="http://epam.com"><img src="/images/sponsor/epam.png" alt="Epam logo"/></a></div>
			</div>
			<div class="sponsor">

			</div>
			<div class="sponsor">

			</div>
			<div class="sponsor">

			</div>
			<div class="sponsor">

			</div>
		</div>
	</div>
<%include "footer.gsp"%>
