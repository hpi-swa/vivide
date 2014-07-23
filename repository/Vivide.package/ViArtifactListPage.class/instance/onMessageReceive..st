system changes
onMessageReceive: evt

	| affectedEditors |
	affectedEditors := self artifactContainers select: [:container | container isAffectedBy: evt].
	affectedEditors ifEmpty: [^ self "ignore"].
	
	evt isInformation ifTrue: [self showInformation: evt text].
	evt isWarning ifTrue: [self showWarning: evt text].
	evt isError ifTrue: [self showError: evt text].