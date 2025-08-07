#!/bin/bash

############################
# Author: Nikhitha Mara
# Date : 08/07/2025
#
# script to list the users have access to github repository
############################

helper()

function helper {
   
	cmd_args = 2
	if [ $# -ne $cmd_args ]; then
		echo "please excute the script with required input parameters"
	fi
}

api_url= "https://api.github.com"

#export environmental variables for accessing github api using username/token

USERNAME=$username
TOKEN=$token

#owner and repository information

repo_owner=$1
repo_name=$2

#function to make a GET reuqest to the GITHUB API

function github_api_get {
	local endpoint="$1"
	local url= "${api_url}/${endpoint}"

	#send a Get request to the GitHub API with auntentication
	curl -s -u "${USERNAME}:${TOKEN}" "$url"
}

#function to list users with read access to the repository

function list_users_with_read_access {
	local endpoint="repos/${repo_owner}/${repo_name}/collaborators"

	"Fetch the list of collaborators on the repository
	collaborators="$(github_api_get "$endpoint" | jq -r '.[] | select(.permissions.pull == true) | .login')"

	#Dislay the list of collaborators with read access
	if [[ -z "$collaborators" ]]; then 
		echo "No users with read access found for ${repo_owner}/{repo_name}."
	else
		echo "users with read access to ${repo_owner}/${repo_name}:"
		echo "$collaborators"
	fi
}

# Main script

echo "Listing users with read access to ${repo_owner}/${repo_name}..."
list_users_with_read_access



