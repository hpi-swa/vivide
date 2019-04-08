changes
onObjectsChanged
	
	"Tell editors about new context."
	self artifactContainers do: [:editor |
		editor onContextChanged].