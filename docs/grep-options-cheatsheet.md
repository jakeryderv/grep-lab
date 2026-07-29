## OPTIONS

#### Generic Program Information

| Option / variants / arguments | Description | Simple example |
|---|---|---|
| `--help` | Show usage help and exit. | `grep --help` |
| `-V`, `--version` | Show installed `grep` version. | `grep --version` |

#### Pattern Syntax

Choose one pattern syntax mode. It applies to all `-e` and `-f` patterns.

| Option / variants / arguments | Description | Simple example |
|---|---|---|
| `-E`, `--extended-regexp` | Use extended regular expressions. | `grep -E 'error|warning' file.txt` |
| `-F`, `--fixed-strings` | Treat patterns as literal strings, not regex. | `grep -F 'a+b' file.txt` |
| `-G`, `--basic-regexp` | Use basic regular expressions. This is the default. | `grep -G 'error\|warning' file.txt` |
| `-P`, `--perl-regexp` | Use Perl-compatible regular expressions. | `grep -P '\d{3}-\d{4}' file.txt` |

#### Matching Control

| Option / variants / arguments | Description | Simple example |
|---|---|---|
| `-e PATTERN`, `--regexp=PATTERN` | Supply a pattern explicitly. Repeat for multiple patterns. | `grep -e 'error' -e 'warning' file.txt` |
| `-f FILE`, `--file=FILE` | Read patterns from a file, one per line. | `grep -f patterns.txt file.txt` |
| `-i`, `--ignore-case` | Ignore uppercase/lowercase differences. | `grep -i 'error' file.txt` |
| `--no-ignore-case` | Restore case-sensitive matching. | `grep -i --no-ignore-case 'Error' file.txt` |
| `-v`, `--invert-match` | Select lines that do not match. | `grep -v 'debug' file.txt` |
| `-w`, `--word-regexp` | Match only complete words. | `grep -w 'cat' file.txt` |
| `-x`, `--line-regexp` | Match only when the entire line matches. | `grep -x 'enabled' file.txt` |

#### General Output Control

| Option / variants / arguments | Description | Simple example |
|---|---|---|
| `-c`, `--count` | Print the number of matching lines. | `grep -c 'error' file.txt` |
| `--color[=WHEN]`, `--colour[=WHEN]` | Color matched text. `WHEN`: `auto`, `always`, or `never`. | `grep --color=auto 'error' file.txt` |
| `-L`, `--files-without-match` | Print filenames that contain no matches. | `grep -L 'TODO' *.py` |
| `-l`, `--files-with-matches` | Print filenames containing at least one match. | `grep -l 'TODO' *.py` |
| `-m NUM`, `--max-count=NUM` | Stop after `NUM` matching lines per file. | `grep -m 3 'error' logfile` |
| `-o`, `--only-matching` | Print only the matched parts. | `grep -oE '[0-9]+' file.txt` |
| `-q`, `--quiet`, `--silent` | Print nothing; use the exit status to test for a match. | `grep -q 'ready' file.txt && echo found` |
| `-s`, `--no-messages` | Suppress unreadable or missing-file errors. | `grep -s 'error' missing.txt` |

#### Output Line Prefix Control

| Option / variants / arguments | Description | Simple example |
|---|---|---|
| `-b`, `--byte-offset` | Prefix output with the zero-based byte offset. | `grep -b 'error' file.txt` |
| `-H`, `--with-filename` | Always show the filename. | `grep -H 'error' file.txt` |
| `-h`, `--no-filename` | Do not show filenames. | `grep -h 'error' *.log` |
| `--label=LABEL` | Give standard input a filename-like label. | `gzip -cd app.gz \| grep --label=app.log -H 'error'` |
| `-n`, `--line-number` | Prefix matches with line numbers. | `grep -n 'error' file.txt` |
| `-T`, `--initial-tab` | Align prefixed output using tab stops. | `grep -nT 'error' file.txt` |
| `-Z`, `--null` | End output filenames with NUL instead of newline. | `grep -lZ 'error' * \| xargs -0 printf '%s\n'` |

#### Context Line Control

| Option / variants / arguments | Description | Simple example |
|---|---|---|
| `-A NUM`, `--after-context=NUM` | Show `NUM` lines after each match. | `grep -A 3 'error' logfile` |
| `-B NUM`, `--before-context=NUM` | Show `NUM` lines before each match. | `grep -B 3 'error' logfile` |
| `-C NUM`, `-NUM`, `--context=NUM` | Show `NUM` lines before and after each match. | `grep -C 2 'error' logfile` |
| `--group-separator=SEP` | Set the separator between context groups. | `grep -C 2 --group-separator='====' 'error' logfile` |
| `--no-group-separator` | Do not print separators between context groups. | `grep -C 2 --no-group-separator 'error' logfile` |

#### File and Directory Selection

| Option / variants / arguments | Description | Simple example |
|---|---|---|
| `-a`, `--text` | Process binary files as text. | `grep -a 'text' binary.dat` |
| `--binary-files=TYPE` | Control binary-file handling. `TYPE`: `binary`, `text`, or `without-match`. | `grep --binary-files=without-match 'error' *` |
| `-D ACTION`, `--devices=ACTION` | Control handling of devices, FIFOs, and sockets. `ACTION`: `read` or `skip`. | `grep -D skip 'error' /dev/*` |
| `-d ACTION`, `--directories=ACTION` | Control directory handling. `ACTION`: `read`, `skip`, or `recurse`. | `grep -d recurse 'TODO' src/` |
| `--exclude=GLOB` | Skip files matching a filename glob. | `grep -r --exclude='*.log' 'TODO' .` |
| `--exclude-from=FILE` | Read exclusion globs from a file. | `grep -r --exclude-from=ignore.txt 'TODO' .` |
| `--exclude-dir=GLOB` | Skip matching directories during recursive searches. | `grep -r --exclude-dir='.git' 'TODO' .` |
| `-I` | Treat binary files as if they contain no matches. | `grep -rI 'TODO' .` |
| `--include=GLOB` | Search only filenames matching a glob. | `grep -r --include='*.py' 'TODO' .` |
| `-r`, `--recursive` | Search directories recursively; only follow command-line symlinks. | `grep -r 'TODO' src/` |
| `-R`, `--dereference-recursive` | Search recursively and follow all symbolic links. | `grep -R 'TODO' src/` |

#### Other Options

| Option / variants / arguments | Description | Simple example |
|---|---|---|
| `--line-buffered` | Flush output one line at a time; useful in live pipelines. | `tail -f app.log \| grep --line-buffered 'error'` |
| `-U`, `--binary` | Read files verbatim as binary. Mainly relevant on Windows. | `grep -U 'pattern' file.txt` |
| `-z`, `--null-data` | Treat NUL bytes rather than newlines as record separators. | `printf 'one\0two\0' \| grep -z 'two'` |
