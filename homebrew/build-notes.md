## Brew (App) Build Notes

When building source --HEAD:

`zk` (note app) --HEAD requires:

+ go
+ (go requires) + icu4c

`helix` (editor) --HEAD requires:

+ rust
+ (rust requires) + libssh2

Considered placing rust and go under management of `asdf` but brew still requires (and installs) its own when using `--fetch HEAD`