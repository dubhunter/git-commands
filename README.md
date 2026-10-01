# Custom Git Commands - make your life more awesomer

## Install
 * `cd Projects && git clone git@github.com:dubhunter/git-commands.git`
 * `cd git-commands && make install`

Symlinks every `git-*` script into `/usr/local/bin`. Safe to re-run - already-linked scripts are left alone. On a fresh install it opens this README for the IDE integration steps below, since those can't be automated.

## Usage (from within any git directory [cloned from github.com])
 * `git open` (open the "new pull request" page)

## IntelliJ Integration (or any Jetbrains IDE)
 * Open `Preferences`
 * Go to `External Tools`
 * Click `Add` (the `+`)

![PhpStorm Example](https://github.com/dubhunter/git-commands/raw/master/screenshots/git-open-php-storm.png)
 * Then go to `Keymap`
 * Search for `Pull Request`
 * Double click to `Add Keyboard Shortcut`
 * `Apply`
 * `OK`
