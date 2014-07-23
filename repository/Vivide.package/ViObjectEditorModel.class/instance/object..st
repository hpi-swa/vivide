accessing
object: anObject

	wrappedObject := (ObjectExplorerWrapper
		with: anObject
		name: 'object'
		model: self).

	self modelReset.