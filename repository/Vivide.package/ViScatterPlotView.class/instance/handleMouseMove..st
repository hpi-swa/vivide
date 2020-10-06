graph
handleMouseMove: evt
	"Draw the cross hair."
	(graph hasProperty: #showCross) ifTrue: [
		graph setProperty: #showCross toValue: evt position.
		self changed].
	super handleMouseMove: evt.