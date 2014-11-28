actions
copyEditor

	(ViEditor newFromState: (ViEditorState new in: [:s | self saveState: s]; yourself))
		openInWindowAsIs.