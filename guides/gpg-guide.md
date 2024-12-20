# Emma's GPG Guide

Last updated: 2024/12/20

Hello! You've stumbled across my gpg guide. I made this because the gpg docs are confusing and I'd like something central :3

Feel free to copy this file and distribute it, as long as you credit me as the original author, and mention if you've made any changes and what changes.

To create a keypair with GPG, run
`gpg --full-generate-key` and follow the steps. When asked for multiple options, the defaults are usually fine

To list your keys, run:

`gpg --list-secret-keys --keyid-format=long`

To send your key to a keyserver, run:
`gpg --keyserver certserver.pgp.com --send-key (your pgp fingerprint)`

The keyservers syncronise every now and then so just use the one thats closest.

To export your public key in armor format (ASCII representation), run
`gpg --armor --export (your pgp fingerprint)`


## User Verification and signing
To sign any file, use
`gpg --output file.sig --sign file`

To verify a file, use
`gpg --verify file.sig`

To verify and decrypt a file, use
`gpg --output file --decrypt file.sig`

You can also clearsign a file, for posting somewhere else, using
`gpg --output file.sig --clearsign file`

You can export a public key using the following command:
`gpg --output alice.gpg --export (email address)`

You can import a public key using the following command:
`gpg --import blake.gpg`

To import a public key from a keyserver, run
`gpg --keyserver certserver.pgp.com --recv-keys (fingerprint)`