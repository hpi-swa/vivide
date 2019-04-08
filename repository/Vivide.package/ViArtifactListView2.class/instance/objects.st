accessing - objects
objects
	"Asks all editors for their current object."
	
	^ (self artifactContainers
		collect: [:artifactContainer | artifactContainer object])
		reject: [:obj | obj isNil]