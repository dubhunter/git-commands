# Custom Git Commands
## Make your life more awesomer

### Install
`cd Projects && git clone git://code.corp.twilio.com/will/git-commands.git`
`cd /usr/local/bin && ln -s ~/Projects/git-commands/git-*` 

### Usage (from within any git directory [cloned from code.corp])
* `git open` (open the "new pull request" page)

### PhpStorm Integration (or any IntelliJ IDE)
* Open `Preferences`
* Go to `External Tools`
* Click `Add` (the `+`)

![PhpStorm Example](https://code.corp.twilio.com/will/git-commands/raw/master/screenshots/git-open-php-storm.png)
* Then go to `Keymap`
* Search for `Pull Request`
* Double click to `Add Keyboard Shortcut`
* `Apply`
* `OK`