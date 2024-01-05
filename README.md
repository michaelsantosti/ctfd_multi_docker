# Welcome to CTFd Multi Docker 👋
![Version](https://img.shields.io/badge/version-1.0-blue.svg?cacheSeconds=2592000)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](#)
[![Twitter: michaelsantosti](https://img.shields.io/twitter/follow/michaelsantosti.svg?style=social)](https://twitter.com/michaelsantosti)

```

                _________              __                  __  .__
               /   _____/____    _____/  |_  ____  _______/  |_|__|
               \_____  \__   \  /    \   __\/  _ \/  ___/\   __\  |
               /        \/ __ \|   |  \  | (  <_> )___ \  |  | |  |
              /_______  (____  /___|  /__|  \____/____  > |__| |__|
 =====================\/=====\/=====\/================\/=======================
                            Multi CTFd Docker Deploy Setup
 ==============================================================================
   Date............ 05/01/2024              Version....... V1.0
   By.............. Michael Santosti        Target........ CTFd
 ==============================================================================

```

## Description

This project aims to provide a foundation for deploying multiple CTFd dockers on a single server running Ubuntu 21.04 or higher.

By default, this model will create separate stacks, one for monitoring with Glances, another with MariaDB and Adminer, and four more stacks, each with its respective CTFd and Redis.

## Getting Started

### Prerequisites

- Ubuntu 21.04 or later
- Docker
- Docker Compose

### Installing

1. Clone the repository on your computer
```bash
git clone https://github.com/michaelsantosti/ctfd_multi_docker.git docker
```

2. Access the directory and run the script
```bash
cd docker
sudo chmod +x start-ctfd.sh
sudo bash start-ctfd.sh
```

## Author

👤 **Michael Santosti**

* Website: www.santosti.com
* Twitter: [@michaelsantosti](https://twitter.com/michaelsantosti)
* Github: [@michaelsantosti](https://github.com/michaelsantosti)
* LinkedIn: [@michaelsantosti](https://linkedin.com/in/michaelsantosti)

## Show your support

Give a ⭐️ if this project helped you!
