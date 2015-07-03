running
simulateSystemChangeAndCallbacks

	"Simulate system change."
	self class compile: 'shouldNotSeeMe'.
	self class removeSelector: #shouldNotSeeMe.
	
	"Simulate queue processing. Trigger model update this way. See ViQueryModel>>#refresh."
	ActiveWorld doOneSubCycle.