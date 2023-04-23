# phoenix

This is a bash script that generates hashes for words in a given wordlist file. The supported hash types include MD4, MD5, SHA1, SHA2-224, SHA2-256, SHA2-384, SHA2-512, SHA3-224, SHA3-256, SHA3-384, SHA3-512, RIPEMD-160, BLAKE2b-512, NTML, and Whirlpool. The script can also crack a specified hash like ranibow table.



## Usage
Usage: phoenix.sh [OPTIONS]


Options:

- `-h`, `--help`: Display the help menu.
- `-v`, `--version`: Show the script version.
- `--hash HASH_TYPE`: Hash type (see supported types below).
- `-w`, `--wordlist WORDLIST`: Path to the wordlist file.
- `--crk hash`: Crack the specified hash.

Supported hash types:

- 00: MD4
- 0: MD5
- 1: SHA1
- 2: SHA2-224
- 3: SHA2-256
- 4: SHA2-384
- 5: SHA2-512
- 6: SHA3-224
- 7: SHA3-256
- 8: SHA3-384
- 9: SHA3-512
- 10: RIPEMD-160
- 11: BLAKE2b-512
- 12: NTML
- 13: Whirlpool

Examples:

```bash
# Generate MD5 hashes from a wordlist
$ ./phoenix.sh --hash 0 -w /path/to/wordlist.txt

# Crack the hash
$ ./phoenix.sh --crk hash -w wordlisthash.txt

# Show script version
$ ./phoenix.sh -v

# Show help menu
$ ./phoenix.sh --help

  phoenix.sh -v                                   # Show script version
  phoenix.sh --help                               # Show help menu


