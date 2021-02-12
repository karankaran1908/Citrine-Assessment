# Port name
variable "port" {
  type = "string"
}

# Repo name
variable "repo_name" {
  type = "string"
}

#Source path 
variable "source_path" {
  description = "source path for project"
  default     = "./"
}

#Image tag
variable "tag" {
  description = "tag to use for our new docker image"
  default     = "latest"
}
