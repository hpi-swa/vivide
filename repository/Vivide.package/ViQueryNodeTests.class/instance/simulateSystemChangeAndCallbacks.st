running
simulateSystemChangeAndCallbacks

	| msg |
	"Simulate system change."
	SystemChangeNotifier uniqueInstance
		evaluated: ('{1}' format: {thisContext sender selector}).
	
	"Simulate queue processing. Trigger model update this way. See ViQueryModel>>#refresh."
	[(msg := WorldState deferredUIMessages nextOrNil) == nil]
		whileFalse: [msg value].