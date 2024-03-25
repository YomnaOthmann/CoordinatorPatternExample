# CoordinatorPatternExample
#### This repo is a simple iOS app for implementing coordinator design pattern
If we want to navigate between two screen the first screen needs to have an intimate knowledge about the destination and takes the responsibility to create, configure and present the second screen, this leads to number of problems:
- you have a hard coded link between 2 view controllers which makes them tightly coupled
- you may duplicate the navigation code if you want to view the same VC from various screens
- it becomes very hard to modify the flow of your app or scaling your app up
  
Coordinator pattern decouples the view controllers and makes the VCs have no knowledge about each other when navigating from one VC to another it only notify the coordinator that some event occured to perform the navigation.
In coordinator pattern your app flow is controlled using a coordinator, and your view communicates only with a coordinator.
you will find that you can modify your app flow easily and you can use youe view controllers in any order.
