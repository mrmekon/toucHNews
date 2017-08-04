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

* [toucHNews v0.3.2 - 64-bit OS X 10.12 (Sierra)](https://github.com/mrmekon/toucHNews/releases/download/toucHNews-0.3.2/toucHNews-0.3.2.zip) (MD5 Checksum: `8b90eaab993729847308a643804e6da8`)
* [toucHNews v0.3.1 - 64-bit OS X 10.12 (Sierra)](https://github.com/mrmekon/toucHNews/releases/download/toucHNews-0.3.1/toucHNews-0.3.1.zip) (MD5 Checksum: `f395e6f000e4d632c491d3c6431a51a1`)
* [toucHNews v0.3.0 - 64-bit OS X 10.12 (Sierra)](https://github.com/mrmekon/toucHNews/releases/download/toucHNews-0.3.0/toucHNews.zip) (MD5 Checksum: `adb4b7611037c721c7c8a6f23ac09dd2`)
* [toucHNews v0.2.1 - 64-bit OS X 10.12 (Sierra)](https://github.com/mrmekon/toucHNews/releases/download/toucHNews-0.2.1/toucHNews.zip) (MD5 Checksum: `1f3432046981443780d453757ec01ebc`)
* [toucHNews v0.2.0 - 64-bit OS X 10.12 (Sierra)](https://github.com/mrmekon/toucHNews/releases/download/toucHNews-0.2.0/toucHNews.zip) (MD5 Checksum: `327fcce38801812b0d49224064f15c50`)

### GitHub

```
$ git clone https://github.com/mrmekon/toucHNews.git
$ cd toucHNews
$ cargo run
```

## Requirements

* A Mac with a Touch Bar, of course.  Or you can use the Touch Bar simulator in XCode if you don't have one and want to test it out.
* "Control Strip" enabled on the Touch Bar.  The Control Strip is the always-available shortcuts on the right-hand side.  It is enabled by default.  If it's not enabled for you, open *System Preferences* -> *Keyboard*, and in the *Touch Bar shows* drop-down select *App Controls with Control Strip*.

## Direct Dependencies

* [fruitbasket](https://github.com/mrmekon/fruitbasket) - Rust framework for Mac app lifecycle
* [rubrail](https://github.com/mrmekon/rubrail-rs) - Rust Touch Bar UI library
* [hn](https://github.com/mrmekon/hn-rs) - Rust Hacker News API wrapper
* [open](https://github.com/Byron/open-rs) - Opens things
