---
layout: topic
title: "Crypto"

level: 3

intro: Cryptography is a corner stone of a trusted web. Without it many services could not be offered reliably. While rust has a strong RNG, the main suite in use isn't pure rust but the (in)famous openssl.

suites:
 - openssl
 - rust-crypto
 - libsodium-sys
 - gpgme

rng:
 - rand
 - uuid
 - random

passwords:
  - bcrypt
  - djangohashers

tls:
 - openssl
 - solicit
 - tls

hashing:
 - fnv
 - farmhash
 - twox-hash
 - shaman
 - md5
 - djangohashers
 - hash-rs
 - argon2rs
 - blake2-rfc
 - bcrypt

algorithms:
 - secp256k1
 - twox-hash
 - chacha20-poly1305-aead
 - blake2-rfc
 - fastpbkdf2

tooling:
 - tempfile
 - cookie

news_tag: crypto
---


<h2>Suites  {% include level.html level=2 %}</h2>

<p><em>While openssl is the most popular suite, rust-crypto remains the only memory-safe option.</em></p>

{% include packages.html packages=page.suites %}


<h2>Random Number Generators  {% include level.html level=0 %}</h2>

{% include packages.html packages=page.rng %}


<h2>Password  {% include level.html level=3 %}</h2>

{% include packages.html packages=page.passwords %}


<h2>TLS  {% include level.html level=3 %}</h2>

<p><em>Still missing: a memory-safe TLS lib built in rust only</em></p>

{% include packages.html packages=page.tls %}



<h2>Tooling  {% include level.html level=4 %}</h2>

<p><em>Tooling is great, just a little scarce...</em></p>

{% include packages.html packages=page.tooling %}


---

<h2>Also</h2>


<h3>Hashing  {% include level.html level=3 %}</h3>

{% include packages.html packages=page.hashing %}


<h3>Algorithms  {% include level.html level=3 %}</h3>

{% include packages.html packages=page.algorithms %}
