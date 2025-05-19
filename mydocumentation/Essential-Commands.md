
# Essential Commands
 
## Hard links and Soft links

In this project, I demonstrate how to create hard and soft links in Linux. A hard link is a pointer to a file, and a soft (symbolic) link is like a shortcut. Here’s how I created a hard link for an image file.

### Task 1 hard link:
I created a hard link for an image of a rose located in my `image` folder under `docs` to be linked to `myfolder` for the `david`
user.


#### Steps taken:
 1 First I had to create the new user david using  `sudo useradd david`
 	
 2 Then use mkdir to create the new folder myfolder and images

 3 Now I can use my ln command to create the hard link `sudo  ln /home/debbie/linux-commands-showcase/myfolder/docs/images/rose.jpeg /home/david/myfolder/images`

📷 [Click here to view the hardlink screenshot](./myfolder/docs/images/hardlink-proof.png)

### Task 2 soft link:
Since soft link is not limited to files like hard links I am making a soft link of `myfolder` under the user `debbie` to `myfolder` in the user `david`

Command used: `sudo ln -s /home/debbie/linux-commands-showcase/myfolder /home/david/myfolder` 
 
📷 [Click here to view the softlink screenshot](./myfolder/docs/images/softlink-proof.png)

## Special Permissions in Linux: SUID, SGID, and Sticky Bit

### Task 1 SUID (Set User ID)  

Allows users to run an executable file as if they are the owner of the file

#### Steps taken:

1 Create a file named suidfile using command touch 

2 using `chmod 4664 suidfile`


### Task 2 SUIG (Set Group ID)

When set on a directory, all new files inside it inherit the group of the directory, not the user’s default group.


#### Steps taken:

1 Create a file named suigfile using command touch

2 using `chmod 2664 suidfile`

### Task 3 Sticky bit 
Used on shared directories to allow users to create files but only delete their own files.


#### Steps taken:

1 Create a file named suigfile using command touch

2 using `chmod 1664 stickybitfile`

Note I did not add execute permissions for any user groups which is why the permissions have been capitalised

📷 [Click here to view the Special Permissions Proof](./myfolder/docs/images/special-permissions-proof.png)

## Filtering files based on size, name, permissions and time 

### by size

Command used: `find . -size +1k` to find files more than 1 kilobyte for less than 1 kilobyte use `-1k` 

### by name

Command used: `find . -name 'suigfile'`  I can also use `-i` to make it not case sensitive 

### by file type

Command used: `find . -name '*.png'`

### by permission

Command used: `find . -perm /4000` to find files with SUID permission and `2000` and `1000` for SUIG and Sticky bit permissions

To find for any special permissions use `7000` because the value of all permissions together is `4+2+1= 7` 

Also `/4000` means any of these permissions `-4000` at least these permissions and `4000` exactly those permissions

### by time

Command used: `find . -mtime -2` finds files modified in the last 2 days to find for more than 2 days use `+2`

`find . -mmin -10` finds files modified in the last 10 mins if it was more than 10 mins it would be `+10`

`find . -atime -2` finds files based on last access in this case that is in the last 2 days `+2` would mean more than 2 days

### by type

Command used: `find . -type f` this is to find regular files `d` to find directories 

### Filtering with and, or, not 

Commands used: 

`find . -perm /7000 -size +1k` this implies an and operator
`find . -perm /7000 -o -size +1k` the `-o` option shows that this is an or operator
`find . -not -name 's*'` the `not` option shows that this is a not operator 


📷 [Click here to view the Filter screenshot](./myfolder/docs/images/filter-proof.png)
📷 [Click here to view the Filter the type, OR, NOT screenshot](./myfolder/docs/images/filter-proof3.png)
📷 [Click here to view the  AND filter screenshot](./myfolder/docs/images/and-filter-proof.png)

## Compare & Manipulate file content

### Search and replace a particular word in a file

Command used: `sed 's/June/April/g' logs.txt` however this just modifies the file it doesnt do any permanent damage unless I use option `-i`

### To cut and extract information from a file

Command used: `cut -d " " -f 3 logs.txt > time.txt` to extract a copy of the 3rd column in logs.txt file which storres the value of times and place in another file the time.txt file

### To cut and extract information from a file


Command used: `cut -d " " -f 3 logs.txt > time.txt` to extract a copy of the 3rd column in logs.txt file which storres the value of times and place in another file the time.txt file

### Arranging files alphabetically

Command used: `sort countries` you can use option `-o` to overwrite the output in an existing file so that I dont have to create a new file again for arranged countries `sort countries -o countries`

### Removing repeating lines nxt to each other

Command used: `uniq countries`

**NOTE** these 2 commands could have been combined to give the same output `sort countries | uniq` also know that it was neccessary to sort so repeating countries would be on lines nxt to each other then we we could apply uniq command

### Comparison

I only ended up sorting the countries file so it still has repeated values then I stored the unique values in a file called singlecountries using the command in the NOTE section I created a file with the exact same content on singlecountries and stored it in a file called countries201. These are the files I would be using for my comparison excercise.

Command used: 

`diff countries201 singlecountries` no output was given cause there is no difference

`sdiff countries201 singlecountries` gave me the output of both files side by side so I can see there is no difference 

`diff countries countries201` uses < and > signs to show what is in file 1 and what is in file 2 `-c` option can also be used to show more context about sorrounding text using `+/-` signs

`sdiff countries countries201` shows both files side by side and what is missing in this line that is present in the other line
 
📷 [Click here to view the Search and Replace screenshot](./myfolder/docs/images/search-and-replace.png)
📷 [Click here to view the Cut and Extract screenshot](./myfolder/docs/images/cut-extract.png)
📷 [Click here to view the Sort and Uniq command screenshot](./myfolder/docs/images/CM2-3-4.png)
📷 [Click here to view the Comparison screenshot](./myfolder/docs/images/Comparison-proof.png)
📷 [Click here to view the Diff command using option c screenshot](./myfolder/docs/images/option-c-diff.png)

## Linux Basic Regex Search Examples

This contains a collection of useful regular expression search patterns using the `grep` command

### Finding files starting with `s` and ending with file:
 `ls | grep -E '^s.*file$'`

### Find filenames with `t` as the second letter:
 `ls | grep -E '^.t'`

### Match timestamps in logs file:
 `grep -E '[0-9][0-9]:[0-9][0-9]:[0-9][0-9]' logs.txt`

### Find matches for failed passwords in the suidfile:
`grep -E -w 'Failed password' suidfile`

### Print only matching word:
`grep -oE 'UFW|ALLOW' suigfile`

### Repetition of characters 
`grep -E 'a{1,3}' countries`

📷 [Click here to view Linux Basic Regex screenshot](./myfolder/docs/images/linux-basic-regex.png)

## Archive, Compression, Decompression, Backup

### Archiving with tar

Command used: `tar --create --file archive.tar tarfile` to create the archive then use `tar --append --file archive.tar tarfile1 tarfile2` to add files

**To list contents without extracting** use `--list` option

**To extract** use `--extract` option, extract into a directory by using `--directory tarfiles`

### Compression & Decompression

Using `gzip` , `bzip2` and  `x2` to compress only files and `gunzip`, `bunzip`, `unxz` to decompress respectively 

Command used: `gzip countries` option `keep` can be used to keep original file compressed

Command used: `gunzip countries` 

Zip command can be used for files and directories 

Command used: `zip zipfolder.zip tarfiles/`

**To list content without extraction** `unzip -l zipfolder.zip`

**To unzip** `unzip zipfolder.zip`

### Backup

I want to backup my files on the user debbie to another folder under the user david 

Command used: `rsync -av /home/debbie/ /home/david/documentbackup/`

📷 [Click here to view Archive screenshot](./myfolder/docs/images/archive-proof.png)
📷 [Click here to view Compression Decompresion screenshot](./myfolder/docs/images/compression-decompression.png)
📷 [Click here to view Zip and backup screenshot](./myfolder/docs/images/zip-and-backup.png)
📷 [Click here to view Backup proof screenshot](./myfolder/docs/images/backup-proof.png)

## SSL Certificate Creation 

To generate a private key and certificate signing request

Command used: `openssl req -newkey rsa:2048 -keyout key.pem -out req.pem`

To generate a self sigined certificate

Command used: `openssl req -x509 -noenc -newkey rsa:4096 -days 365 -keyout myprivate.key -out mycerticate.crt`


📷 [Click here to view SSL 1 screenshot](./myfolder/docs/images/privatekey-request-ssl.png)
📷 [Click here to view SSL 2 screenshot](./myfolder/docs/images/selfsigned-ssl.png)

