---
layout: news

title: "7 high priority Rust libraries that need to be written"
date: 2014-06-04
source:
  author: Brian Anderson
  link:
    url: "https://mail.mozilla.org/pipermail/rust-dev/2014-June/010139.html"
    name: "rust-dev Mailinglist"

tags:
 - database
 - i18n
 - crypto

---


Greetings, all.

Looking for ways to have an impact on Rust? The current plan for Rust
defers the creation of some key libraries until after Rust 1.0, but that
doesn't mean we can't start on them now if the interest is out there.
Here are 7 libraries that need to be created soon rather than later.
Since these are all destined to be either incorporated directly into the
Rust distribution or to be officially-maintained cargo packages, and
since they are targeted for inclusion in the post-1.0 timeframe, they
need to be designed carefully and implemented thoroughly.

### [Internationalization](https://github.com/mozilla/rust/issues/14494)

ECMA 402 is a standard for internationalization, dealing with the
automatic conversion of various information based on locale. Rust's core
libraries provide *no* internationalization. A core problem here will be
determining how Rust should think about locales.

### [Localization](https://github.com/mozilla/rust/issues/14495)

This may depend on the previous for locale support, if nothing else.
This is largely about the human-assisted translation of strings. We
would like to experiment with a new Moco-developed standard for this,
called L20N. This project will be about figuring out how the L20N API
can be adapted to Rust.

### [Unicode (ICU)](https://github.com/mozilla/rust/issues/14656)

The exact path forward here may require a bit of discussion still, but I
think the most viable approach starts with binding libicu and wrapping
in a Rust API.

### [Date/Time](https://github.com/mozilla/rust/issues/14657)

Our time crate is very minimal, and the API looks dated. This is a hard
problem and JodaTime seems to be well regarded so let's just copy it.

### [HTTP](https://github.com/teepee/teepee)

ChrisMorgan is leading an effort to implement HTTP for Rust and I'm sure
he would love more contributions.

### [Crypto](https://github.com/mozilla/rust/issues/14655)

We've previously made the decision not to distribute any crypto with
Rust at all, but this is probably not tenable since crypto is used
everywhere. My current opinion is that we should not distribute any
crypto /written in Rust/, but that distributing bindings to proven
crypto is fine.

Figure out a strategy here, build consensus, then start implementing a
robust crypto library out of tree, with the goal of merging into the
main distribution someday, and possibly - far in the future -
reimplementing in Rust. There are some existing efforts along these
lines that should be evaluated for this purpose.

There are a lot of people interested in, and working on, this subject,
and crypto potentially interacts with many libraries (like HTTP) so
coordination is needed.

### [SQL](https://github.com/mozilla/rust/issues/14658)

Generic SQL bindings. I'm told SqlAlchemy core is a good system to learn
from.
