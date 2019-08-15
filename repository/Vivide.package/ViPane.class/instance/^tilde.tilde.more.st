connections and tuples
~~> aPane
	"Return fully initialized and attached connection."

	^ (ViPaneConnection kind: #automatic from: self to: aPane)
		attach; yourself