# Grep Lab

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

## Usage

#### get started

[Read the grep notes](#grep-notes). It explains the main things you need to know, and includes links for reference sheets like [options](docs/grep-options-cheatsheet).

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

## Grep Notes

<u>**TLDR;**</u> Control `grep` with `OPTION(S)` to find `PATTERN(S)` from `FILE(S)` or `stdin`, using regex or strings.

#### overview

A `grep` command is composed of 3 parts: **options**, **patterns**, and **files**. However, the only required part is **patterns**

```bash
# [ ] = optional
# ... = preceeding can be repeated
grep [OPTION...] PATTERN [FILE...]
grep [OPTION...] -e PATTERN ... [FILE...]
grep [OPTION...] -f PATTERN_FILE ... [FILE...]
```

***main default options:***

- `-G, --basic-regexp`
- `--no-ignore-case`
- `-m -1, --max-count=-1` -> treated as infinity
- `-H, --with-filename` -> default when more than 1 file to search
- `-h, --no-filename` -> default when only 1 file or only stdin to search

*for full list of options, see [options cheatsheet](docs/grep-options-cheatsheet)*

There are 4 ***Pattern Syntax*** options that you use to set the syntax for patterns:

```
-E, --extended-regexp
-F, --fixed-strings
-G, --basic-regexp
-P, --perl-regexp
```

`grep` default is basic regex, which contrasts from extended regex mostly in the characters behavior. Basic rule of thumb -> if you want more true regex, or if you know regex, you'll likely want to use `-E`. Just note these **pattern syntax** commands apply to all the patterns in a grep command.

Patterns should be quoted when typing them in your shell, as the characters could potentially be intercepted by your shell. I also recommend using single quotes for this very same reason.

`-e` sets one typed pattern to search. `-f` interprets every line from a file as an independent pattern to search. You can repeat or use any combination of the two, just must preceed with `-e` or `-f` respectively, only reason `-e` is absent from fist command structure above is because it is the default so you can ommit if you want to just type one pattern.



