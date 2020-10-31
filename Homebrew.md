# Common

```log
Warning: A newer Command Line Tools release is available.
Update them from Software Update in System Preferences or run:
  softwareupdate --all --install --force

If that doesn't show you an update run:
  sudo rm -rf /Library/Developer/CommandLineTools
  sudo xcode-select --install

Alternatively, manually download them from:
  https://developer.apple.com/download/more/.
```

## vapoursynth

```log
==> Caveats
This formula does not contain optional filters that require extra dependencies.
To use vapoursynth.core.sub, execute:
  brew install vapoursynth-sub
To use vapoursynth.core.ocr, execute:
  brew install vapoursynth-ocr
To use vapoursynth.core.imwri, execute:
  brew install vapoursynth-imwri
To use vapoursynth.core.ffms2, execute the following:
  brew install ffms2
  ln -s "../libffms2.dylib" "/usr/local/lib/vapoursynth/libffms2.dylib"
For more information regarding plugins, please visit:
  http://www.vapoursynth.com/doc/plugins.html
```

## vault

```log
==> Caveats
To have launchd start vault now and restart at login:
  brew services start vault
Or, if you don't want/need a background service you can just run:
  vault server -dev
```

## perl

```log
==> Caveats
By default non-brewed cpan modules are installed to the Cellar. If you wish
for your modules to persist across updates we recommend using `local::lib`.

You can set that up like this:
  PERL_MM_OPT="INSTALL_BASE=$HOME/perl5" cpan local::lib
  echo 'eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"' >> ~/.zshrc
```

## thefuck

```log
==> Caveats
==> thefuck
Add the following to your .bash_profile, .bashrc or .zshrc:

  eval $(thefuck --alias)
```

## libarchive


```log
==> libarchive
libarchive is keg-only, which means it was not symlinked into /usr/local,
because macOS already provides this software and installing another version in
parallel can cause all kinds of trouble.

If you need to have libarchive first in your PATH run:
  echo 'export PATH="/usr/local/opt/libarchive/bin:$PATH"' >> ~/.zshrc

For compilers to find libarchive you may need to set:
  export LDFLAGS="-L/usr/local/opt/libarchive/lib"
  export CPPFLAGS="-I/usr/local/opt/libarchive/include"

For pkg-config to find libarchive you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/libarchive/lib/pkgconfig"
```

## lua

```log
==> lua@5.1
You may also want luarocks:
  brew install luarocks
```

## guile

```log
==> guile
Guile libraries can now be installed here:
    Source files: /usr/local/share/guile/site/3.0
  Compiled files: /usr/local/lib/guile/3.0/site-ccache
      Extensions: /usr/local/lib/guile/3.0/extensions

Add the following to your .bashrc or equivalent:
  export GUILE_LOAD_PATH="/usr/local/share/guile/site/3.0"
  export GUILE_LOAD_COMPILED_PATH="/usr/local/lib/guile/3.0/site-ccache"
  export GUILE_SYSTEM_EXTENSIONS_PATH="/usr/local/lib/guile/3.0/extensions"
```

## mono

```log
==> mono
To use the assemblies from other formulae you need to set:
  export MONO_GAC_PREFIX="/usr/local"
```