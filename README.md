# grep-lab

Interactive way to learn and practice grep

It is **recommended** to read or at least skim the [grep man page](docs/man-grep.txt) first.

I have found `man` pages to be a great concise reference for commands, but they can often get pretty terse, and feel similar to reading math notation you don't now. `info` pages are great for a deep-dive, but I often find the majority of the content irrelevant for daily/practical use for tools like `grep`. So how do you learn when the options or deciphering from the `man`, or going down the rabbit hole of `info`?

This repo is intended to present the core material from `man` and `info` pages in a more intuitive way, and have the examples/games to practice and nail down the concepts.

*read yourself*
```bash
man grep
info grep
```

---

## usage

#### get started

[Read the grep notes](#grep-notes)

#### run the lab

clone the repo, `cd` into it, then run run the `lab.sh` script

```bash
git clone https://github.com/jakeryderv/grep-lab.git
cd grep-lab
chmod +x lab.sh
./lab.sh
```

The `lab.sh` script is just a simple wrapper. It will run the commands you type, and compare your grep commands output to the intended output per exercise and try to guide you along the way with simple and intuitive error messages.

---

# Grep Notes

## intro

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
