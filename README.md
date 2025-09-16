# Stainless homebrew tap

This tap is designed to serve the latest version of the Stainless verification framework on homebrew, to ease setup. Currently MacOS only. 

## What is Stainless?

You can read more about Stainless at the [main webpage](https://epfl-lara.github.io/stainless/), and at the original [repository](https://epfl-lara.github.io/stainless/).

## How can I use this tap?

Using this tap to install Stainless is fairly straightforward: 

```console
$ brew tap quartztz/stainless
$ brew install stainless
```

You can check it worked well by running `stainless --version` and checking that everything works well; the output should look something like:

```console
$ stainless --version
[  Info  ] Stainless verification tool (https://github.com/epfl-lara/stainless)
[  Info  ]   Version: 0.9.9.1
[  Info  ]   Built at: 2025-09-05 18:25:54.473+0200
[  Info  ]   Stainless Scala version: 3.7.2
[  Info  ] Inox solver (https://github.com/epfl-lara/inox)
[  Info  ] Version: 1.1.5-208-g467725e
[  Info  ] Bundled Scala compiler: 3.7.2
```

This should update nicely on its own. Upgrade your stainless version by running:

```console
$ brew update
$ brew upgrade stainless
```

## Issues

Feel free to create an issue for any question you might have about the behavior of this tap. Please direct Stainless-specific questions to the original repository.
