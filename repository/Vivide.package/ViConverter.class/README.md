Converts Vivide objects (e.g., scripts, pane connections, pane-view configurations, input/output objects) to other (structured) formats to support version control and collaboration.

Uses dictionaries as intermediate representation for Vivide objects. See ViScriptObject >> #asDictionary, #loadFromDictionary:, and #mergeFromDictionary:.

import = read (sth-to-dict) + merge (dict-to-obj)
export = extract (obj-to-obj) + write (dict-to-sth)