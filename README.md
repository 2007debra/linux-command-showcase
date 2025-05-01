# Linux Command Showcase

This project documents the Linux commands I've learned and used. It includes explanations, examples, and use cases.

## what is inside

- Essential Linux commands
- Operations Deployment
- Users and Groups
- Networking
- Storage

Essential Commands
 
## Hard links and Soft links

In this project, I demonstrate how to create hard and soft links in Linux. A hard link is a pointer to a file, and a soft (symbolic) link is like a shortcut. Here’s how I created a hard link for an image file.

### Task 1 hard link:
I created a hard link for an image of a rose located in my `image` folder under `docs` to be linked to `myfolder` for the `david`
user.


### Steps taken:
 1 First I had to create the new user david using  `sudo useradd david`
 	
 2 Then use mkdir to create the new folder myfolder and images

 3 Now I can use my ln command to create the hard link `sudo  ln /home/debbie/linux-commands-showcase/myfolder/docs/images/rose.jpeg /home/david/myfolder/images`

📷 [Click here to view the hardlink screenshot](./myfolder/docs/images/hardlink-proof.png)

## Task 2 soft link:
Since soft link is not limited to files like hard links I am making a soft link of `myfolder` under the user `debbie` to `myfolder` in the user `david`

## Command used:

`sudo ln -s /home/debbie/linux-commands-showcase/myfolder /home/david/myfolder` 
 
📷 [Click here to view the softlink screenshot](./myfolder/docs/images/softlink-proof.png)

### Special Permissions in Linux: SUID, SGID, and Sticky Bit

## Task 1 SUID (Set User ID)  

Allows users to run an executable file as if they are the owner of the file

# Steps taken:

1 Create a file named suidfile using command touch 

2 using `chmod 4664 suidfile`


## Task 2 SUIG (Set Group ID)

When set on a directory, all new files inside it inherit the group of the directory, not the user’s default group.


# Steps taken:

1 Create a file named suigfile using command touch

2 using `chmod 2664 suidfile`

## Task 3 Sticky bit 
Used on shared directories to allow users to create files but only delete their own files.


# Steps taken:

1 Create a file named suigfile using command touch

2 using `chmod 1664 stickybitfile`

Note I did not add execute permissions for any user groups which is why the permissions have been capitalised

📷 [Click here to view the Special Permissions Proof](./myfolder/docs/images/special-permissions-proof.png)
