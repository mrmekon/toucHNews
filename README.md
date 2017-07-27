# toucHNews: Hacker News news feed for the Mac Touch Bar

[![OSX/Linux Build Status](https://travis-ci.org/mrmekon/toucHNews.svg?branch=master)](https://travis-ci.org/mrmekon/toucHNews)
[![Crates.io Version](https://img.shields.io/crates/v/toucHNews.svg)](https://crates.io/crates/toucHNews)

toucHNews is a simple, interactive Hacker News news feed for the Mac Touch Bar.

It lives persistently in the "Control Strip", the small cluster of icons permanantly displayed on the right side of the Touch Bar.  When its icon (cleverly labeled `hn`) is clicked, it expands to display the latest headlines from Hacker News across the Touch Bar.

It is written in Rust.

## Interface 

One headline is shown at a time.  To interact:

* Single tap the headline to show the next one.
* Double tap the article counter to return to the beginning.
* Swipe right until the text turns blue and release to open the article in your default browser
* Swipe left until the text turns orange to permanently remove the article from the bar.
* Tap the 'X' in the circle on the left to minimize back into the Control Strip.
* Tap the 'X' in the square on the right to quit.


## Screencast

<img src="https://github.com/mrmekon/toucHNews/blob/master/docs/screencast.gif" width="1200">


## Installing toucHNews

### Pre-built Mac App

**WARNING** Apps are not signed with a developer ID.  After running for the first time, you must open the Security & Privacy tab of System Preferences and unblock toucHNews.

* [toucHNews v0.2.0 - 64-bit OS X 10.12 (Sierra)](https://github.com/mrmekon/toucHNews/releases/download/toucHNews-0.2.0/toucHNews.zip) (MD5 Checksum: `327fcce38801812b0d49224064f15c50`)

### GitHub

Use Cargo to build as usual, but note that it **must** run from a Mac App bundle to access the Touch Bar.  A primitive script is included to bundle the debug build for you.

```
$ git clone https://github.com/mrmekon/toucHNews.git
$ cd toucHNews
$ cargo build
$ ./bundle_osx.sh
$ open target/toucHNews.app
```

## Requirements

* A Mac with a Touch Bar, of course.  Or you can use the Touch Bar simulator in XCode if you don't have one and want to test it out.
* "Control Strip" enabled on the Touch Bar.  The Control Strip is the always-available shortcuts on the right-hand side.  It is enabled by default.  If it's not enabled for you, open *System Preferences* -> *Keyboard*, and in the *Touch Bar shows* drop-down select *App Controls with Control Strip*.

## Direct Dependencies

* [rubrail](https://github.com/mrmekon/rubrail-rs) - Rust Touch Bar UI library
* [hn](https://github.com/mrmekon/hn-rs) - Rust Hacker News API wrapper
* [objc](https://github.com/SSheldon/rust-objc) - Rust Objective-C bindings
* [open](https://github.com/Byron/open-rs) - Opens things
