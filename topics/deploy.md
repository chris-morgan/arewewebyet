---
layout: topic
title: "Deploying"

level: 3

intro: How are on quick and easy deploying of our applications into existing server infrastructures? Well, stuff is looking quite good actually.

---

<h2>Heroku {% include level.html level=3 %}</h2>

You didn't really expect Heroku to support rust natively, did you? But if you are looking at this subject, you probably are familiar with running heroku with an inofficial [buildpack](https://devcenter.heroku.com/articles/buildpacks). In that case, you are in a lot of luck, because [EMK](https://github.com/emk) provides that for you already: [github.com/emk/heroku-buildpack-rust](https://github.com/emk/heroku-buildpack-rust)

<h2>Docker {% include level.html level=3 %}</h2>

There are a few docker images for rust, but only [Scorpils](https://github.com/Scorpil) [Dockerfiles](https://github.com/Scorpil/docker-rust) support the latest version as well as the unstable nightly builds. There is [even some discussion](https://users.rust-lang.org/t/creating-official-docker-image-for-rust/4165) on moving the repo to the official Rust-Github-Organisation.

<h2>Unikernels {% include level.html level=4 %}</h2>

Unikernels are the rising star and newest hot thing to do big scale deployment. With Rust being a system language unikernels are an obvious approach to the problem and doing your research you'll find that there is a lot happening here indeed. In fact, since sept 2015, rust itself supports the [rumprun kernel as a compile target](https://github.com/rust-lang/rust/commit/c099cfab061e8464141a1cf85c2bd09536a311d0). That said, unikernels are still very young and a rather unexplored technology – unless you really need that extra security, you are probably better off running it on bare hardware for now. 
