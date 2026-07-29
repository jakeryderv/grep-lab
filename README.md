# grep-lab

interactive practice lab for learning grep

run `man grep` or `info grep` for more details.

Highly suggested to read through these, or at least just the man page to familarize yourself with everything. the following notes reference these man/info pages, but intended to present the everything in a more concise, readable, and approachable way.

---

## overview

`grep` searches for **pattern(s)** from **standard input**, **file(s)**, or **directories recursively**.

***COMMAND STRUCTURE***

```bash
grep [OPTION...] PATTERN [FILE...]
grep [OPTION...] -e PATTERN ... [FILE...]
grep [OPTION...] PATTERN_FILE ... [FILE...]
```



## OPTIONS

#### pattern-syntax

```bash
grep -E # extended regex (ERE), same as 'egrep'
grep -F # patterns as fixed strings, no regex, same as `fgrep`
grep -G # DEFAULT, basic regex (BRE)
grep -P # patters as Perl-compatible regex (PCREs)
```

## REGULAR EXPRESSIONS



## EXIT STATUS



## ENVIRONMENT



## SEE ALSO

awk, cmp, diff, find, perl, sed, sort, xargs, read, pcre2, pcre2syntax, pcre2pattern, terminfo, glob, regex

---
