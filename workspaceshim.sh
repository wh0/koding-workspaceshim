cd () {
	unset -f cd
	cd "$@"
	case "$1" in
	$HOME/Workspaces/*)
		test -e .workspacerc && source .workspacerc ;;
	esac
}
