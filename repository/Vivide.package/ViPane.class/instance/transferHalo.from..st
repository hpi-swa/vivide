as yet unclassified
transferHalo: event from: formerHaloOwner

	(VivideLight useClassicMode
		or: [(self owner isKindOf: ViMultiPaneWidget) not]) ifTrue: [
			^ super transferHalo: event from: formerHaloOwner].
	
	"Ask the multi-pane widget which should be the new target."
	(self owner transferHalo: event toPane: self) in: [:target |
		target owner == self owner
			ifTrue: [
				target
					perform: #transferHalo:from:
					withArguments: {event. formerHaloOwner}
					inSuperclass: target class superclass.]
			ifFalse: [target transferHalo: event from: formerHaloOwner]].