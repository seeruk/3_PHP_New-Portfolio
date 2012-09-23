{{include file='../RootHeader.tpl'}}

<div class="span5">
	<p class="lead serif"><em>Thanks for stopping by! Why don't you take a look around?</em></p>
	<p>I like to work on a lot of things, if you want to see pretty much everything I'm working on (publically) at the moment, check out the 'Recent Activity' feed to the right!</p>
	<p>The major projects I'm working on at the moment you can find described in a bit more detail by checking out the box below, or looking at my <a href="{{$smarty.const.ROOT}}Home/Portfolio/">portfolio page</a>.</p>
	<div class="well mini-project">
		<img src="{{$smarty.const.STATIC_ROOT}}images/projects/140_140_thnm.jpg" class="pull-left img-polaroid" alt="" title="" />
		<p class="header"><strong>Top Hats &amp; Monocles</strong> (<abbr title="Top Hats &amp; Monocles">THNM</abbr>)</p>
		<p class="desc"><abbr title="Top Hats &amp; Monocles">THNM</abbr> is a live streaming website for multiple streamers to use to entertain viewers.</p>
		<p>The website is being redeveloped with better code and functionality in mind.</p>
		<button class="btn btn-success btn-block">View Project</button>
	</div>
</div>

<div class="span4">
	<div class="bubble">
		<ul class="epic-list">
			<li class="header">Recent Activity</li>
			{{foreach $arrFeed as $entry}}
				<li class="ellipsis">
					<img src="{{$smarty.const.STATIC_ROOT}}images/feed/{{$entry.type}}.png" class="pull-left" alt="{{$entry.type}}" title="{{$entry.type}}" />
					<p class="ellipsis">{{$entry.content}}</p>
					<p>{{$entry.timestamp}}</p>
			{{/foreach}}
		</ul>
		<div class="feed">
			<p class="header">Recent Activity</p>
			{{foreach $arrFeed as $entry}}
				<span class="entry {{$entry.type}}">
					<img src="{{$smarty.const.STATIC_ROOT}}images/feed/{{$entry.type}}.png" class="pull-left imgFeedType" alt="{{$entry.type}}" title="{{$entry.type}}" />
					<div class="ellipsis">{{$entry.content}}</div>
					<div>{{$entry.timestamp}}</div>
				</span>
			{{/foreach}}
		</div>
	</div>
</div>

{{include file='../RootFooter.tpl'}}
