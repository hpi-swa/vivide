changes
onClassChange: classKindEvent

	| affectedEditors |
	affectedEditors := self artifactContainers select: [:container | container isAffectedBy: classKindEvent].
	affectedEditors ifEmpty: [^ self "ignore"].
	
	classKindEvent isCommented
		ifTrue: [
			self showInformation: ('<b>',classKindEvent itemClass name, '</b> comment changed.') asHtmlText].
		
	classKindEvent isModified
		ifTrue: [
			self showInformation: ('<b>',classKindEvent itemClass name, '</b> definition changed.') asHtmlText].
		
	classKindEvent isReorganized
		ifTrue: [
			self showInformation: ('<b>',classKindEvent itemClass name, '</b> reorganized.') asHtmlText].
		
	affectedEditors do: [:editor |
		classKindEvent isRemoved
			ifTrue: [editor close]
			ifFalse: [editor resetSource]].