initialization
reset

	self model ifNil: [^ self].
	
	self widget removeAllMorphs.
	
	"1) Try to update selections."
	self addColumnFor: self model.
	self columns last grabKeyboard. 