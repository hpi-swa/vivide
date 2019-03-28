as yet unclassified
updateScale

	self content submorphs ifEmpty: [^ self].
	
	self container owner "inner transform"
		scale: (self container owner extent / self container extent).