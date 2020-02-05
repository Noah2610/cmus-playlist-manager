# shellcheck disable=SC2155

set -e

# shellcheck source=./util.sh
function _dl_util_sh {
    local UTIL_VERSION="v2.1.2"
    local dir="$( dirname "$( realpath "$1" )" )"
    [ -f "${dir}/util.sh" ] || bash "${dir}/download-util.sh" "$UTIL_VERSION" || exit 1
    source "${dir}/util.sh"
}; _dl_util_sh "$0"

export CLRCODE="$( clr "${CLR_CODE[@]}" )"
export CLRBOLD="$( clrattr "bold" )"
export CLRRS="$( clrrs )"
export PLAYLIST_EXT="pl"
