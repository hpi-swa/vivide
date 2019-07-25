updating - kernel
beginUpdateChain

	ActiveEvent ifNotNil: [:evt |
		"Mouse-over events spoil things. Ignore them." 
		evt type == #mouseOver ifTrue: [^ self].
		"If we are the first in the chain, we may update at least once."
		forceUpdate := (lastUpdateId == evt) not.
		"For sync updates, this does no harm. See #objects:from:"
		lastUpdateId := evt].