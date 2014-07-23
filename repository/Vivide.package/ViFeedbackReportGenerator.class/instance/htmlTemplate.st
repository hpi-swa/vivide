accessing
htmlTemplate

	^ '<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>VIVIDE - Feedback Report</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
<script src="positions.js"></script>
<script src="debuggers.js"></script>
<script src="user.js"></script>
<script src="queries.js"></script>
<script src="versions.js"></script>

<link href=''http://fonts.googleapis.com/css?family=PT+Sans:regular,italic,bold,bolditalic'' rel=''stylesheet'' type=''text/css'' />
<link href=''http://fonts.googleapis.com/css?family=Oxygen+Mono'' rel=''stylesheet'' type=''text/css''>
<link href=''http://fonts.googleapis.com/css?family=PT+Mono'' rel=''stylesheet'' type=''text/css''>

<script>
$(function() \{
counter = 500;
jQuery.each(positions, function(key, val) \{
	$("#" + key).css(\{left: val.left, top: val.top, position: "absolute", zIndex: val.zIndex\});
	$("#" + key).draggable();
	$("#" + key).mousedown( function() \{
		this.style.zIndex = counter++;
	\});
\});
\});
</script>

</head>

<body style="font-family: ''PT Mono'', sans-serif; font-size: 10pt;">
	<h1>VIVIDE Bug Report</h1>
	<div id="message" style="background-color: #DDD; width: 70em; padding: 1em;">
	</div>
	
	<script>
	$("#message").append("<p>" + user.message + "</p>");
	$("#message").append(''<p><span>'' + user.topic + ''</span>, <span>'' + user.mood + ''</span>, <a href="mailto:'' + user.email + ''?subject={3}">'' + user.email + ''</a></p>'');
	
	jQuery.each(versions, function(i, ver) \{
		$("#message").append(''<li>'' + ver + ''</li>'');
	\});
	
	</script>
	
	<div>
	<ul>
		<li><a href="#screenshot">Screenshot</a></li>
		<li><a href="#debuggers">Call stacks</a></li>
		<li><a href="#queries">Queries</a></li>
	</ul>
	</div>
	
	<h2>Screenshot</h2>
	<div id="screenshot" style="position: relative; width: {1}px; height: {2}px;">
	</div>

	<script>
		jQuery.each(positions, function(key, val) \{
			$("#screenshot").append(''<img src="img/'' + key + ''.png" alt="''+ val.label + ''" id="'' + key + ''" />'');
		\});
		//$("#screenshot").append(''<div style="clear:both;"></div>'');
	</script>
	
	<div id="debuggers" style="background-color: #DDD; width: 70em; padding: 1em;">
		<h2>Call Stacks</h2>
	</div>
	<script>
		var nl = /\\n|\\r|\\r\\n/g;
		var tab = /\\t/g;
		$("#debuggers").append(''<p>'');
		jQuery.each(debuggers, function(i, dbg) \{
			$("#debuggers").append(''<a href="#'' + dbg.id + ''">PID '' + dbg.id + '' - '' + dbg.label + ''</a><br>'');
		\});
		$("#debuggers").append(''</p>'');
		
		jQuery.each(debuggers, function(i, dbg) \{
			$("#debuggers").append(''<h3 id="'' + dbg.id + ''">'' + dbg.id + ''</h3>'');
			$("#debuggers").append(''<em>'' + dbg.label + ''</em>'');
			$("#debuggers").append(''<p>'' + dbg.stack.replace(nl, "<br>").replace(tab, "&nbsp;&nbsp;&nbsp;") + ''</p>'');
		\});
	</script>
	
	<div id="queries" style="background-color: #DDD; width: 70em; padding: 1em;">
		<h2>Queries</h2>
	</div>
	<script>
		var nl = /\\n|\\r|\\r\\n/g;
		var tab = /\\t/g;
		$("#queries").append(''<p>'');
		jQuery.each(queries, function(i, q) \{
			$("#queries").append(''<a href="#'' + i + ''">'' + q.label + '' ('' + q.baseClassName + '')</a><br>'');
		\});
		$("#queries").append(''</p>'');
		
		jQuery.each(queries, function(i, q) \{
			$("#queries").append(''<h3 id="'' + i + ''">'' + q.label + ''</h3>'');
			$("#queries").append(''<em>'' + q.baseClassName + ''</em>'');
			$("#queries").append(''<p>'' + q.code.replace(nl, "<br>").replace(tab, "&nbsp;&nbsp;&nbsp;") + ''</p>'');
		\});
	</script>
</body>

</html>'