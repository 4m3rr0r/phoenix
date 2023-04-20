#!/bin/bash

RED1='\033[5;31m'
RED='\033[31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
YELLOW1='\033[5;33m'
BULE='\033[0;34m'
RESET='\033[0m'

wordlist="$4"

# Function to print banner
print_banner() {

    echo ""
    echo ""

    echo -e "${RED}██████╗ ██╗  ██╗ ██████╗ ███████╗███╗ r ██╗██╗██╗  ██╗${RESET}"
    echo -e "${RED}██╔══██╗██║  ██║██╔═══██╗██╔════╝████╗  ██║██║╚██╗██╔╝${RESET}"
    echo -e "${RED}██████╔╝███████║██║ 3 ██║█████╗r ██╔██╗ ██║██║0╚███╔╝r${RESET}"
    echo -e "${RED}██╔═══╝ ██╔══██║██║   ██║██╔══╝  ██║╚██╗██║██║ ██╔██╗ ${RESET}"
    echo -e "${RED}██║ 4   ██║m ██║╚██████╔╝███████╗██║ ╚████║██║██╔╝ ██╗${RESET}"
    echo -e "${RED}╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝${RESET}"

    echo ""
    echo ""
                                                   
}

# Call the function to print the banner
print_banner



if [[ ${1} == "-h" ]] || [[ ${1} == "--help" ]] 
then 
    echo "
    Usage: ${0} [OPTIONS]

Options:
  -h, --help                 Display this help menu
  -v, --version              Show script version
  --hash HASH_TYPE           Hash type (see supported types below)
  -w, --wordlist WORDLIST    Path to wordlist file
  --crk  hash                Crack the specified hash

Supported hash types:
  00  MD4
  0   MD5
  1   SHA1
  2   SHA2-224
  3   SHA2-256
  4   SHA2-384
  5   SHA2-512
  6   SHA3-224
  7   SHA3-256
  8   SHA3-384
  9   SHA3-512
  10  RIPEMD-160
  11  BLAKE2b-512
  12  NTML
  13  Whirlpool

Examples:
  your_script.sh --hash 0 -w /path/to/wordlist.txt    # Generate MD5 hashes from a wordlist
  your_script.sh --crk hash -w wordlisthash.txt       # crak the hash
  your_script.sh -v                                   # Show script version
  your_script.sh --help                               # Show help menu

    
    "

    exit 1
elif [[ ${1} == "-v" ]] || [[ ${1} == "--version" ]]
then
    echo -e "program version 1.0.0 "

elif [[ ${1} == "--hash" ]] && [[ ${2} == "0" ]] && [[ ${3} == "-w" ]] && [[ $wordlist == *.txt ]]
then 
  

echo -e    "${BULE}[+] Generating MD5 hashes for words in $wordlist...${RESET}"
echo -e "${YELLOW1}[+] Please wait${RESET}"
while read -r word; do
  hash=$(echo -n "$word" | md5sum | awk '{print $1}')
  echo "$word::$hash" >> "$wordlist.md5.txt"
  
done < "$wordlist"

echo -e "${GREEN}[+] Done! MD5 hashes saved to $wordlist.md5${RESET}"
#md5end

elif [[ ${1} == "--hash" ]] && [[ ${2} == "00" ]] && [[ ${3} == "-w" ]] && [[ $wordlist == *.txt ]]
then 
  
echo -e    "${BULE}[+]Generating MD4 hashes for words in $wordlist...${RESET}"
echo -e "${YELLOW1}[+] Please wait${RESET}"

while read -r word; do
  hash=$(echo -n "$word" | openssl md4 | awk '{print $2}')
  echo "$word::$hash" >> "$wordlist.md4.txt"
done < "$wordlist"

echo -e "${GREEN}[+]Done! MD4 hashes saved to $wordlist.md4${RESET}"
#md4end
elif [[ ${1} == "--hash" ]] && [[ ${2} == "1" ]] && [[ ${3} == "-w" ]] && [[ $wordlist == *.txt ]]
then 
  

echo  -e   "${BULE}[+]Generating sha1 hashes for words in $wordlist...${RESET}"
echo -e "${YELLOW1}[+] Please wait${RESET}"
while read -r word; do
  hash=$(echo -n "$word" | sha1sum | awk '{print $1}')
  echo "$word::$hash" >> "$wordlist.sha1.txt"
done < "$wordlist"

echo -e "${GREEN}[+]Done! sha1 hashes saved to $output_file${RESET}"
#sha1end
elif [[ ${1} == "--hash" ]] && [[ ${2} == "2" ]] && [[ ${3} == "-w" ]] && [[ $wordlist == *.txt ]]
then 
  
echo -e    "${BULE}[+]Generating sha2-224 hashes for words in $wordlist...${RESET}"
echo -e "${YELLOW1}[+] Please wait${RESET}"
while read -r word; do
  hash=$(echo -n "$word" | openssl sha224 | awk '{print $2}')
  echo "$word::$hash" >> "$wordlist.sha2_224.txt"
done < "$wordlist"

echo -e "${GREEN}[+]Done! sha2_224 hashes saved to $wordlist.sha2_224${RESET}"
#sha2-224end
elif [[ ${1} == "--hash" ]] && [[ ${2} == "3" ]] && [[ ${3} == "-w" ]] && [[ $wordlist == *.txt ]]
then 
  
echo -e    "${BULE}[+]Generating sha2-256 hashes for words in $wordlist...${RESET}"
echo -e "${YELLOW1}[+] Please wait${RESET}"

while read -r word; do
  hash=$(echo -n "$word" | openssl sha256 | awk '{print $2}')
  echo "$word::$hash" >> "$wordlist.sha2_256.txt"
done < "$wordlist"

echo -e "${GREEN}[+]Done! sha2-256 hashes saved to $wordlist.sha2_256${RESET}"
#sha2-256end
elif [[ ${1} == "--hash" ]] && [[ ${2} == "4" ]] && [[ ${3} == "-w" ]] && [[ $wordlist == *.txt ]]
then 
  
echo -e    "${BULE}[+]Generating sha2-384 hashes for words in $wordlist...${RESET}"
echo -e "${YELLOW1}[+] Please wait${RESET}"
while read -r word; do
  hash=$(echo -n "$word" | openssl sha384 | awk '{print $2}')
  echo "$word::$hash" >> "$wordlist.sha2_384.txt"
done < "$wordlist"

echo -e "${GREEN}[+]Done! sha2-384 hashes saved to $wordlist.sha2_384 ${RESET}"
#sha2-384end
elif [[ ${1} == "--hash" ]] && [[ ${2} == "5" ]] && [[ ${3} == "-w" ]] && [[ $wordlist == *.txt ]]
then 
  
echo -e    "${BULE}[+]Generating sha2-512 hashes for words in $wordlist...${RESET}"
echo -e "${YELLOW1}[+] Please wait${RESET}"
while read -r word; do
  hash=$(echo -n "$word" | openssl sha512 | awk '{print $2}')
  echo "$word::$hash" >> "$wordlist.sha2_512.txt"
done < "$wordlist"

  echo -e "${GREEN}[+]Done! sha2-512 hashes saved to $wordlist.sha2_512 ${RESET}"
#sha2-512end
elif [[ ${1} == "--hash" ]] && [[ ${2} == "6" ]] && [[ ${3} == "-w" ]] && [[ $wordlist == *.txt ]]
then 
  
echo -e    "${BULE}[+][+]Generating sha3-244 hashes for words in $wordlist...${RESET}"
echo -e "${YELLOW1}[+] Please wait${RESET}"

while read -r word; do
  hash=$(echo -n "$word" | sha3sum -a 224 | awk '{print $1}')
  echo "$word::$hash" >> "$wordlist.sha3_244.txt"
done < "$wordlist"

echo -e "${GREEN}[+] Done! sha3-244 hashes saved to $wordlist.sha3_244 ${RESET}"
#sha3-244end
elif [[ ${1} == "--hash" ]] && [[ ${2} == "7" ]] && [[ ${3} == "-w" ]] && [[ $wordlist == *.txt ]]
then 
  
echo -e    "${BULE}[+]Generating sha3-256 hashes for words in $wordlist...${RESET}"
echo -e "${YELLOW1}[+] Please wait${RESET}"

while read -r word; do
  hash=$(echo -n "$word" | sha3sum -a 256 | awk '{print $1}')
  echo "$word::$hash" >> "$wordlist.sha3_256.txt"
done < "$wordlist"

echo -e "${GREEN}[+] Done! sha3-256 hashes saved to $wordlist.sha3_256 ${RESET}"
#sha3-256end
elif [[ ${1} == "--hash" ]] && [[ ${2} == "8" ]] && [[ ${3} == "-w" ]] && [[ $wordlist == *.txt ]]
then 
  
echo -e    "${BULE}[+]Generating sha3-384 hashes for words in $wordlist...${RESET}"
echo -e "${YELLOW1}[+] Please wait${RESET}"

while read -r word; do
  hash=$(echo -n "$word" | sha3sum -a 384 | awk '{print $1}')
  echo "$word::$hash" >> "$wordlist.sha3_384.txt"
done < "$wordlist"

echo -e "${GREEN}[+] Done! sha3-384 hashes saved to $wordlist.sha3_384 ${RESET}"
#sha3-384end
elif [[ ${1} == "--hash" ]] && [[ ${2} == "9" ]] && [[ ${3} == "-w" ]] && [[ $wordlist == *.txt ]]
then 
  
echo -e "${BULE}[+] Generating sha3-512 hashes for words in $wordlist... ${RESET}"
echo -e "${YELLOW1}[+] Please wait${RESET}"

while read -r word; do
  hash=$(echo -n "$word" | sha3sum -a 512 | awk '{print $1}')
  echo "$word::$hash" >> "$wordlist.sha3_512.txt"
done < "$wordlist"

echo -e "${GREEN}[+]Done! sha3-512 hashes saved to $wordlist.sha3_512 ${RESET}" 
#sha3-512end
elif [[ ${1} == "--hash" ]] && [[ ${2} == "10" ]] && [[ ${3} == "-w" ]] && [[ $wordlist == *.txt ]]
then 
  
echo -e    "${BULE}[+]Generating ripemd160 hashes for words in $wordlist... ${RESET}"
echo -e "${YELLOW1}[+] Please wait${RESET}"

while read -r word; do
  hash=$(echo -n "$word" | openssl ripemd160 | awk '{print $NF}')
  echo "$word::$hash" >> "$wordlist.ripemd160.txt"
done < "$wordlist"

echo -e "${GREEN}[+]Done! ripemd160 hashes saved to $wordlist.ripemd160 ${RESET}"
#ripemd160end
elif [[ ${1} == "--hash" ]] && [[ ${2} == "11" ]] && [[ ${3} == "-w" ]] && [[ $wordlist == *.txt ]]
then 
  
echo -e    "${BULE}[+] Generating blake2b512 hashes for words in $wordlist... ${RESET}"
echo -e "${YELLOW1}[+] Please wait${RESET}"

while read -r word; do
  hash=$(echo -n "$word" | openssl dgst -blake2b512 | awk '{print $NF}')
  echo "$word::$hash" >> "$wordlist.blake2b512.txt"
done < "$wordlist"

echo -e "${GREEN}[+]Done! blake2b512 hashes saved to $wordlist.blake2b512 ${RESET}"
#blake2b512end

elif [[ ${1} == "--hash" ]] && [[ ${2} == "011" ]] && [[ ${3} == "-w" ]] && [[ $wordlist == *.txt ]]
then 
  
echo -e    "${BULE}[+]Generating blake2b512 hashes for words in $wordlist... ${RESET}"
echo -e "${YELLOW1}[+] Please wait${RESET}"

while read -r word; do
  hash=$(echo -n "$word" | openssl dgst -blake2b512 | awk '{print $NF}')
  echo "$word::$hash" >> "$wordlist.blake2b512.txt"
done < "$wordlist"

echo -e "${GREEN}[+]Done! blake2b512 hashes saved to $wordlist.blake2b512 ${RESET}"
#blake2b512end

elif [[ ${1} == "--hash" ]] && [[ ${2} == "12" ]] && [[ ${3} == "-w" ]] && [[ $wordlist == *.txt ]]
then 
  
echo -e "${BULE}[+]Generating ntlm hashes for words in $wordlist...${RESET}"
echo -e "${YELLOW1}[+] Please wait${RESET}"

while read -r word; do
    hash=$(echo -n "$word" | iconv -t utf16le | openssl md4 | awk '{print $NF}')
  echo "$word::$hash" >> "$wordlist.ntml.txt"
done < "$wordlist"

echo -e "${GREEN}[+] Done! ntlm hashes saved to $wordlist.ntlm ${RESET}"
#ntlmend

elif [[ ${1} == "--hash" ]] && [[ ${2} == "13" ]] && [[ ${3} == "-w" ]] && [[ $wordlist == *.txt ]]
then 
  
echo -e "${BULE}[+]Generating whirlpool hashes for words in $wordlist...${RESET}"
echo -e "${YELLOW1}[+] Please wait${RESET}"

while read -r word; do
    hash=$(echo -n "$word" | openssl dgst -whirlpool | awk '{print $NF}')
  echo "$word::$hash" >> "$wordlist.whirlpool.txt"
done < "$wordlist"

echo -e "${GREEN}[+]Done! whirlpool hashes saved to $wordlist.whirlpool ${RESET}"
#whirlpool
elif [[ ${1} == "--crk" ]] && [[ ${2} != "" ]] && [[ ${3} == "-w" ]] && [[ ${4} == *.txt ]] 
then
    # Grep the wordlist for a match with the hash
    result=$(grep -i ${2} ${4})
    # Check if a match was found
    if [ -z "$result" ]; then
        echo -e "${RED1}[+]No match found ${RESET}"
    else
        echo -e " ${GREEN}[+]Match found: $result ${RESET}"
    fi   
else 
    echo ""
    echo -e "\033[31mError: Invalid option\033[0m"
    echo ""
    echo "Try '$0 -h or --help' for more information."
    exit 1
    
fi
