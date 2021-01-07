# U.P.S. Manager

U.P.S. Manager is a python application for monitoring an UPS device and communicating to clients to perform a shutdown in the event of power loss.

## Purpose/ Execution
The server has a USB connection to 1 -> n UPS devices.
The server monitors the state of the the UPS device(s) and awaits for the loss of AC Power
Upon loss of power, the server sends a message to all clients to perform a shutdown.

## Supported Devices
* Tripplite Smart1500LCD - Currently in development

## Recommendations
* Server Node has a static IP address
* Run from a low-power consuming node that can stay online

## Installation

Stub for installation instructions

## Usage

Stub for usage (Server vs clients)

## Future Thoughts
* Turn machines back on after some threshold has been met for restored power.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
Stub for License