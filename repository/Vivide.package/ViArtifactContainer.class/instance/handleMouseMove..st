events
handleMouseMove: evt
	"Handle every unhandled mouse move event."

	"Do not handle mouse moves if dragging something."
	evt hand submorphs ifNotEmpty: [^ self].

	evt wasHandled
		ifFalse: [self mouseMove: evt. evt wasHandled: true].