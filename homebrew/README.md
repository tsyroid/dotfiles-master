## Homebrew Core Elements

#### dump command (-> Brewfile)

`brew bundle dump` <!-- cuz I always forget it -->

#### rmtree

See: https://github.com/beeftornado/homebrew-rmtree

Essentially:

`brew tap beeftornado/rmtree`

... just be carefull; the process has flaws due to the
    structures brew was built upon.

#### reinstall packages from Brewfile

`brew bundle --file /path/to/Brewfile install`

#### node@16 notes

(FIXME: What was node@16 a dependency for again?)

node@16 is keg-only, which means it was not symlinked into /usr/local,
because this is an alternate version of another formula.

If you need to have node@16 first in your PATH, run:
  fish_add_path /usr/local/opt/node@16/bin

For compilers to find node@16 you may need to set:
  set -gx LDFLAGS "-L/usr/local/opt/node@16/lib"
  set -gx CPPFLAGS "-I/usr/local/opt/node@16/include"

