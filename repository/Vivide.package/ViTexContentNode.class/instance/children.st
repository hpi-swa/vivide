as yet unclassified
children

	#('part' 'chapter' 'section' 'subsection') do: [:token |
		
	(('\\', token, '\{(.*)\}(.*)') asRegex
		submatchesIn: content
		collect: [:m | ViTexContentNode new label: (m atLast: 2); content: m last])
			ifNotEmpty: [:nodes | ^ nodes]]