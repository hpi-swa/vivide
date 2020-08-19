drawing - drop shadows
drawDropShadowOn: aCanvas
	"Rectangular shadow with support for rounded corners."
	
	| shadowBounds |
	
	self flag: #uglyHack.
	
	shadowBounds := self shadowOffset isRectangle
		ifTrue: [self outerLayoutBounds outsetBy: self shadowOffset]
		ifFalse: [self outerLayoutBounds translateBy: (self shadowOffset negated max: 0@0)].
	
	"Only redraw the shadow if the shadow area is affected."
	((aCanvas clipRect intersects: shadowBounds) and: [((self outerLayoutBounds insetBy: (self wantsRoundedCorners ifFalse: [0] ifTrue: [self cornerRadius])) containsRect: aCanvas clipRect) not])
		ifTrue: [
			(self hasProperty: #dropShadow)
				ifFalse: [self updateDropShadowCache].
			aCanvas
				translucentImage: (self valueOfProperty: #dropShadow)
				at: shadowBounds topLeft].