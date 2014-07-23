as yet unclassified
openFor: suspendedProcess

	^ (self new
		process: suspendedProcess;
		buildWith: ViToolBuilder new) openAsIs