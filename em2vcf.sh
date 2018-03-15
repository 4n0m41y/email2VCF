#!/bin/bash
# place text file with email list in folder
# please, one text file at a time
# must be one email per line, no commas.
# outputs or overwrites 'newfile.vcf' containing email(s)
# works on a theoretical unlimited basis.
awk '{ printf( "BEGIN:VCARD\nVERSION:2.1\nN:;%s\nFN:%s\nEMAIL;PREF;INTERNET:%s\nREV:2018\nEND:VCARD\n\n" , $1 , $1 , $1 ) }' *.txt > newfile.vcf
#done
