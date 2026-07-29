# grep-lab

This repo is intended to be an interactive way to learn and practice grep.

I *recommended* to read or at least skim the [grep man page](docs/man-grep.txt) first.

I've found man pages to be more brief and useful for reference, but can often appear terse for unfamilar concepts. Info pages are also extremely useful, but are much more detailed and comprehensive, often going in to much greater detail than the one might need.

Highly suggested to read through these, or at least just the man page to familarize yourself with everything. the following notes reference these man/info pages, but intended to present the everything in a more concise, readable, and approachable way.

---

## OVERVIEW

`grep` searches for **pattern(s)** in **file(s)**

***COMMAND STRUCTURE***

```bash
grep [OPTION...] PATTERN [FILE...]
grep [OPTION...] -e PATTERN ... [FILE...]
grep [OPTION...] -f PATTERN_FILE ... [FILE...]
```

```bash
grep 'error' file.txt
```


---

[grep-options](docs/grep-options-cheatsheet.md)

---

## REGULAR EXPRESSIONS



## EXIT STATUS



## ENVIRONMENT



## SEE ALSO

awk, cmp, diff, find, perl, sed, sort, xargs, read, pcre2, pcre2syntax, pcre2pattern, terminfo, glob, regex

---
