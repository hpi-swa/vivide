private
resolveReferences

	definitions do: [:definition | definition notifier doSilently: [definition resolveReferences]].
	steps do: [:step | step notifier doSilently: [step resolveReferences]].