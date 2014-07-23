system changes
isAffectedBy: aSystemEvent

	"It has to do with my class at least."
	aSystemEvent itemClass ~~ self theClass
		ifTrue: [^ false].

	^ aSystemEvent itemKind -> aSystemEvent changeKind caseOf: {
		[#class -> #Modified] -> [
			self method isNil
				ifTrue: [false]
				ifFalse: [
					self artifact method: self reference compiledMethod. "fetch up-to-date method"
					false "no code update"]].
		[#method -> #Modified] -> [
			aSystemEvent oldItem == self method
				ifFalse: [false]
				ifTrue: [
					self flag: #duplicateUpdate. "mt: See ViArtifactListPage >> #onMethodChange:. #resetSource will be called again."
					self object: aSystemEvent item.
					true]].
		[#method -> #Added] -> [
			self method isNil "I am the new method"
				ifFalse: [false]
				ifTrue: [
					self flag: #duplicateUpdate.
					self flag: #ugly. "mt: What if there are many added method events in the chain?"
					false
"					self object: aSystemEvent item.
					true"]].
		[#method -> #Recategorized] -> [aSystemEvent itemMethod methodReference = self reference].
		[#method -> #Removed] -> [aSystemEvent itemMethod methodReference = self reference].
	} otherwise: [false].