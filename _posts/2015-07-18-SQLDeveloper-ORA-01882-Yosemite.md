---
layout: post
title: "ORA-01882: timezone region not found"
---

I was getting this error "ORA-01882: timezone region not found" in SQL Developer. Below is the fix.

<pre>
edit below file
~/.sqldeveloper/4.1.0/product.conf
Add java VM option as follows
AddVMOption -Duser.timezone="+05.30"
</pre>
