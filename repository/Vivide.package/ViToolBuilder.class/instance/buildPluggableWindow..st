as yet unclassified
buildPluggableWindow: aWindowSpec
	"With dataflow."
	
	| widget |
	widget := super buildPluggableWindow: aWindowSpec.
	
	"Setup dataflow"
	aWindowSpec dataflowSpecs do: [:dataflowSpec |
		self
			connect: (self widgetAt: dataflowSpec first)
			signal: #objectSelectionChanged:
			to: (self widgetAt: dataflowSpec second)
			selector: #objects:].
		
	aWindowSpec objects do: [:objectsToPane |
		(self widgetAt: objectsToPane value)
			objects: objectsToPane key].
	
	^ widget