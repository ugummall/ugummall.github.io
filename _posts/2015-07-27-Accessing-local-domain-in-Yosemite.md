---
layout: post
title: "Accessing .local domain sites in Yosemite"
---

If you have a URL that ends with .local then you can not access it in Yosemite (Yosemite 10.10.3) by default. Run below command to access those URLs.

`sudo discoveryutil mdnsactivedirectory yes`.

You need to run above command everytime you re-boot. Not required if you wake up from sleep.

