# BetDocker
A vulnerable Docker container simulating a gambling website business. <br>
Comes with Docker Compose files for easy setup and guidance, installed with a Netcat backdoor, a LDAP server and a hosted Laravel website.

## DISCLAIMER
This is an insecure Docker container which should only be used for local environments.<br>
The scenario was used with an insecure version of Docker susceptible to the RunC vulnerability CVE-2019-5736.<br>
This application is for academic and educational purposes.<br>

## Video Tutorial

https://user-images.githubusercontent.com/72082567/118372186-3b5cc200-b5a8-11eb-9660-e69e5ddd334d.mp4



## Getting Started

These instructions will get a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

To configure your own environment will require a virtual machine or a local environment.

### Installing

A step-by-step series of examples to recreate on your own env.

#### Install Docker
Update your system packages:
```
sudo apt-get update && upgrade
```
For most downloads follow to the Docker download page [DOCKER](https://docs.docker.com/engine/install/).
Download Docker via the command line:
```
sudo apt-get install docker
```
Check whether it is installed:
```
sudo systemctl status docker
```
Add your default user to the Docker group to execute Docker commands without sudo.
```
sudo usermod -aG docker ${USER}
```
For this dockerfile to work, the addition of Docker Compose is required. This is a separate package which needs to be pulled using the curl tool.
````
sudo apt-get install curl
````
Download Docker Compose:
```
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```
Change file permission to be executable:
```
sudo chmod +x /usr/local/bin/docker-compose
```

#### Installation and deployment of the Docker file
In order to run the dockerfile, first the repository needs to be pulled from GitHub using Git:

```
sudo apt-get install git
```

Using Git to pull the repository:

```
git clone https://github.com/SamP10/BetDocker.git
```

Change directory to BetDocker:
```
cd BetDocker
```

For this setup the LaravelBet repository is needed within the BetDocker directory
```
BetDocker/> git clone https://github.com/SamP10/LaravelBet.git 
```

Running Docker Compose will install all images and create live containers.
```
BetDocker/> docker-compose up -d
```

## Configuring the Laravel website

To configure this Laravel website requires interaction with the container digitalocean.com/php<br>
Simply run docker exec to interact with the container.
```
docker exec -it *container_id* bash
```

This automatically opens in the LaravelBet directory, pre-installed with Docker Composer. <br>
Run:
```
composer create-project
```
This will install all the dependencies for running Laravel.

To create and populate the databases run:
```
php artisan migrate:fresh --seed
```
This will successfully configure Laravel.
Simply navigate to your ip address via a web browser and find the website running!

To stop the containers run:
```
docker-compose down
```

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags).

## Authors
* **Sam Plant** - *Code work* - [Sam Plant](https://github.com/SamP10)

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgments

* Hat tip to anyone whose code was used.