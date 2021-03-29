# elk-docker

## Installation

1. Download and install [Docker for Desktop](https://www.docker.com/products/docker-desktop)
2. Download and install [VSCode](https://code.visualstudio.com/)
3. Download this repository's core by clicking the green `Code` button, and then `Download ZIP`.
4. Unzip `elk-docker-master.zip` into a folder and open it with VSCode
5. Follow the guide to open your [integrated terminal](https://code.visualstudio.com/docs/editor/integrated-terminal)
6. Follow the usage guide below
## Usage

- To start the Elastic stack use `docker-compose up`
- To stop the stack, use `Ctrl + C`
- To reset all data to defaults, stop the stack and then run `docker-compose down`. Once this completes, you can use `docker-compose up` to restart all the containers.