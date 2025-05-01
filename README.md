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

📷 [Click here to view the hardlink screenshot](myfolder/docs/images/hardlink-proof.png)

## Task 2 soft link:
Since soft link is not limited to files like hard links I am making a soft link of `myfolder` under the user `debbie` to `myfolder` in the user `david`

## Command used:

sudo ln -s /home/debbie/linux-commands-showcase/myfolder /home/david/myfolder 
 

