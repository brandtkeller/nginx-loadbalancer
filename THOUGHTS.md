# Server vs Client

## CLI
Generic command line usage
* python3 upsmanager.py <nodeType> <serverip>

## Server
Server will have two threads:
* Loop checking for changes in state of AC power to the UPS
* REST API for nodes to enroll/ provide health status

### Startup
* Check if nodeType is server or client
* main loop
    * Check state of UPS devices
    * If no AC power is detected -> Increment counter
    * If counter >= threshold, send shutdown command to all enrolled nodes


## Client
Client will have two threads
* Loop sending updates to server
* REST API for recieving shutdown commands

### Startup
* Check is nodeType is server or client
* main loop
    * Send POST /Node to server

### Command line Variables
* nodetype = client
* serverip = server ip address

## REST API
Goal is to use the same API for both servers and clients

Server needs POST /Node for clients to enroll/update.
Client needs POST /Node for server to send shutdown actions.

We can re-use the same flask code for the POST /Node endpoint.
Body of the messages can contain an 'action'
Clients send 'action':'healthcheck' and 'ipaddress':'192.168.0.122'
Server sends 'action':'shutdown'