tests - squeak notifications
test01SystemChangeNotifications
	"It is possible to react to Squeak's code changes."
	
	| script model |
	script := { [:cls | cls selectors]
		-> { #notifier -> ViSqueakSystemChangeNotifier }
	} asScript.
	
	model := script interpretScriptWith: {self class}.
	self deny: (model objects includes: #shouldNotSeeMe).

	self class compile: 'shouldNotSeeMe'.
	self processDeferredUpdates.
	self assert: (model objects includes: #shouldNotSeeMe).

	self class removeSelector: #shouldNotSeeMe.
	self processDeferredUpdates.
	self deny: (model objects includes: #shouldNotSeeMe).