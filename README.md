# Terraform Beginner Bootcamp 2023

## Semantic versioning

This project utilizes semantic versioning for its tagging - **MAJOR.MINOR.PATCH**.

Commit message should include issue number.



## Progress

### Check OS version

Run `cat /etc/os-release`

### Create bash script for terraform installation in gitpod

`init` script in [.gitpod.yml](./.gitpod.yml) downloads and installs Terraform. Initial template had an issue that stopped the installation process to ask for user input. New installation processes is created in [bash install script](./bin/install-terraform-cli.sh) by copying steps mentioned in [Terraform documentation for Ubuntu](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli#install-terraform).

Initially script file can be run using `source` command (e.g., `source ./bin/install-terraform-cli.sh`) or just by running `./bin/install-terraform-cli.sh`. For the latter to work though, a [change mode (chmod)](https://en.wikipedia.org/wiki/Chmod) command has to be ran on the script.

To check the current change mode, a `ls -la` command can be used. It will show three groups of letters `rwx` (e.g., `drwxr-xr-x`, `-rw-r--r--`) where `r` stands for `read`, `w` - `write`, and `x` - `execute`. Three groups are - `User`, `Group` and `Others`.

To change the file chmod to allow execution, run `chmod u+x ./bin/install-terraform-cli.sh`. It can be changed using numbers as well (e.g., `chmod 744 ./bin/install-terraform-cli.sh`) which relys on [numerical permissions](https://en.wikipedia.org/wiki/Chmod#Numerical_permissions).

> Note: Template uses `init` task in `.gitpod.yml`, but it is run only with [new non-prebuilt workspaces](https://www.gitpod.io/docs/configure/workspaces/tasks#prebuild-and-new-workspaces), so `init` can be changed to `before` to always run them when environment/workspace is started.




## Environment variables

### Checking & searching existing environment variables

```sh
env

env | grep terraform-beginner-bootcamp-2023
```

### Setting a variable in terminal scope

```sh
export PROJECT_ROOT='SOME_VALUE'
echo $PROJECT_ROOT
```

### Setting a variable globally

To set env variable globally, bash profiles can be used or [using GitPod](https://www.gitpod.io/docs/configure/projects/environment-variables#ways-of-setting-user-specific-environment-variables).

#### Using GitPod

```sh
gp env PROJECT_ROOT='/workspace/terraform-beginner-bootcamp-2023'
```

After restart, it should be available in the terminal.
