events-processing
handleTraceItEvent: aTraceItEvent

	self openArtifact: (Vivide callgraphAt: aTraceItEvent).