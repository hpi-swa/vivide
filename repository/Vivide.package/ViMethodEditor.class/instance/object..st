accessing - object
object: anObject

	anObject ifNil: [^ self setDefaultSource].
	
	self object == anObject ifTrue: [^ self].
	
	(anObject isKindOf: MethodReference)
		ifTrue: [
			self artifact method: anObject compiledMethod.
			self resetSource].
	(anObject isKindOf: CompiledMethod)
		ifTrue: [
			self artifact method: anObject.
			self resetSource].
	(anObject isKindOf: ViFlagComment)
		ifTrue: [
			self object: anObject reference.
			self flag: #implicitConversion "mt: Converted to reference."].
		