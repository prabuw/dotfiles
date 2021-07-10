#!/usr/bin/env fish

# Don't ask ssh password all the time
git config --global credential.helper osxkeychain

# better diffs
if command -qs delta
	git config --global core.pager delta
	git config --global interactive.diffFilter 'delta --color-only'
	git config --global delta.syntax-theme Dracula
	git config --global delta.line-numbers true
	git config --global delta.decorations true
end

# use vscode as mergetool
if command -qs code
	git config --global merge.tool vscode
		and git config --global mergetool.vscode.cmd "code --wait $MERGED"
end

abbr -a gst 'git s'
abbr -a gco 'git go'
abbr -a gpl 'git p'
abbr -a gca 'git ca'
abbr -a gamend 'git amend'
abbr -a gclo 'git c'
abbr -a glog 'git l'
abbr -a aliases 'git aliases'