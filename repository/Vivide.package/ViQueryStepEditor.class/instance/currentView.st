accessing - properties
currentView

	^ self ui viewCombo currentItem ifNotNil: [:item | item at: #object]