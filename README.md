Why do we need shell scripting:
There is always a manual process which is taking more effort and more time, like someone asked me to create 100 files or someone asked me to create 100 EC2 instances instead of doing it manually and creating one by one by logging into aws account I use automation and create shell script which will do that quickly.

#purpose of shell scripting for Devops Engineer: #as a devops enginner we need to manage infrastructure, code and configuration management #but most of organizations uses linux because of security #for all this we use shell scripting but eventhough automatic tools are available but we need to use shell scripting #scenario : let us consider a devops engineer who needs to check the node health as most of the employees complaining virtual machines #are not working correctly and the team has around 10000 vm's so everytime to check instead of login those 10000 machines manually we can create shell scripts which tracks the node health of all machines, so instead of this we can run cron job automatically and which logins into all 10000 vm's and generate an email stating cpu and memory utilization of all nodes.

#We automated nodes health as we had 10000 vm's through shell scripting but few may ask you have automated tools why you need shell scripting in that case you can those tools are restricted to few parameters and my script has lot of parameters.

#to monitor node health we use cpu and memory as parameters to evaluate node health. #to display cpu we can use nproc and free memory #instead we can use top command which says which process is using how much memory, cpu and displays overalls cpu and memory #so we monitor node health by top command and writing customizing scripts.

#shell is command line interface to interact with os instead of creating flies from GUI which takes more time I can do it through command line and every operating system comes with a command-line

#what is shell scripting? shell scripting is a process of automating day-to-day activities on linux environment and most of servers have no GUI as its an overhead.

#so in order to create a script first you need file and as its a shell script extension could be .sh

#touch - is the command used to create a file in linux syntax: touch filename.sh

#As I have created file now in order to check if its created or not I use ls - list command ls - is used to show all files and folders syntax ls

#if I have wnat to know the timestamp when its created i can use ls -ltr ls -ltr - gives the timestamp, user and permissions of the file l- long format showing all details t - sorts the file by the latest time created r- reverse order of sorting #so basically -lt displays the newest one first but -r reverses and displayes the oldest created one first based on time

#to see the manual or documentation of any command we use man command syntax: man commandname

#ALL the above commands were not installed any linux machine which comes with shell it has all this pre-installed

#so now in order to write a script we created file now we need to open file so for that we use command vim/vi so if the file #doesn't exist it creates a new file else it opens the file if it exists vim/vi - editor that opens up the file and which allows to write syntax: vim or vi filename.sh

#to start with to write something we need to press esc then i or insert then start writing as we are in insert mode then to save press esc and type :wq! and if you dont wnat to save just quit use :q!

#but why is it because in linux whenever you open a file you need to notify whether u r gonna write/read/copy what action you are gonna do.

#so touch and vim are used to create file then why do we use touch command because touch command is just used to create file but not opens so if someone ask me to create 1000 files then i can't use vim which oepns all files and if all of them are opened the system gets crashed so its a problem of using multiple files opened so in that case we use touch command

#In order to start with the script we always use #!/bin/bash (#!- is called shebang) #here bash is the executable that executes the commands withn in a shell so its a lauguage to write shell commands so why do we write #!/bin/bash in a shell script so instaed of using bash we can use ksh/sh/bash so whenever we write shell script bash is the excutable that excutes your shell script so we are notifying linux machine as we will be using bash and there is no much differences in commands but they may vary with syntax and bash is the widely used one.

so whats the difference between bash/sh because they use sh as well when they use bash because there is an linking process where the request is forwarded to bash so its same but these days some of the operating system like ubuntu they using dash as default so now we cant use sh in place of bash becaiuse now its not linking to bash and script doesn't work as u have dash as default and ur script in bash
#so to know the contents of the file instead of opening it through vim i can use cat command to display the contents of the file #cat filename.sh

#how to excute a shell script we can either say sh filename.sh ./ filename.sh (here we can execute any executable file ex python)

#but when i try to excute the file using sh it works but when i do using ./ its not working says permission denied. #linux is more secure so it asks do you have permission to execute that file so as a owner you should also have permisiion #so for that we grant permission is chmod where ch is change and linux follows numering system for granting #permissions and also permissions are categorized as for user, group and all other users so to have read, write, execute we have 4 for read , 2 for write and 1 for excute so to have all permissions you should add them up like 7 will have all permissions and 5 is like you have read and excutable permission. #if you set 4 5 5 you have read permission and group and all other users have read and excutable permissionms s owner/ user group/ all other users chmod- grant or cahnge the permissions of a file #syntax is chmod permissions filename.sh chmod 777 filename.sh so everyone has access for all three read, write and excute

#history command is used to display all commands entered by user

#to create folders use command mkdir - make directory mkdir filename

#to change to the another directory use cd - change directory cd directoryname

#pwd shows the present directory

#to go to previous directory use cd ..

#always to see the files within the folder we need to use cd foldername and do ls to see list of files in folder

#to delete a folder use rm -rf foldername

basic shell script to create folder and files within it

<img width="599" alt="image" src="https://github.com/user-attachments/assets/c88fad1a-9fe6-4ce9-8eb0-b8de65c77f9c" />

