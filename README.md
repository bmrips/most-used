# `most-used` [![Build Status](https://travis-ci.org/gabebw/most-used.svg?branch=master)](https://travis-ci.org/gabebw/most-used)

This will find your most-used shell commands. It automatically detects whether you're using Zsh or Bash and prints out the history for the correct shell.

To try it out:

```sh
brew tap gabebw/formulae
brew install most-used
most-used | head
```

## Local Development

After changing something, you can run this to recompile and see the result of parsing history:

```sh
./bin/run-zsh
```

Or, to parse your Bash history:

```sh
./bin/run-bash
```

You can also pass options:

```sh
./bin/run-zsh --include-first-argument=git --include-first-argument=spring
```

To print lines that failed to parse:

```sh
./bin/run-zsh --debug
```

To run tests:

```sh
./bin/test
```
