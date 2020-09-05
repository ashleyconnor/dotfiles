encrypt_file() {
  gpg \
    --symmetric \
    --cipher-algo aes256 \
    --digest-algo sha256 \
    --cert-digest-algo sha256 \
    --compress-algo none -z 0 \
    --s2k-mode 3 \
    --s2k-digest-algo sha512 \
    --s2k-count 65011712 \
    --force-mdc \
    --quiet --no-greeting \
    --pinentry-mode=loopback \
    "$1"
}

encrypt_clipboard() {
  pbpaste | gpg \
    --symmetric \
    --cipher-algo aes256 \
    --digest-algo sha256 \
    --cert-digest-algo sha256 \
    --compress-algo none -z 0 \
    --s2k-mode 3 \
    --s2k-digest-algo sha512 \
    --s2k-count 65011712 \
    --force-mdc \
    --quiet --no-greeting \
    --pinentry-mode=loopback \
    --armour
}

