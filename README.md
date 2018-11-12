# golang script that prints "hello"
Simple golang script that prints on the screen the word hello
 
## pre-requirements

- Install **Vagrant**
    - Download and install accordingly to your OS as described here : https://www.vagrantup.com/downloads.html
	
## How to run the code
1. Open Command Line Interpreter: 

 OS system | Operation
 ------------ | -------------
| Windows | Start menu -> Run and type cmd |
| Linux  |Start terminal |
| macOS | Press Command - spacebar to launch Spotlight and type "Terminal," then double-click the search result. |

2. Run the following commands:
```
    git clone https://github.com/yaroslav-007/golang-prints-hello-travis.git
    cd golang-prints-hello-travis
    vagrant up
    vagrant ssh
    go run /vagrant/hello.go
```
