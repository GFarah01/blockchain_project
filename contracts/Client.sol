pragma solidity ^0.5.0;
 
contract Client {
 // uint public taskCount = 0;
  uint public clientCount = 0;
 
  struct ClientStruct {
     uint cin;
     string fullName;
     uint age;
     bool state;
  }

   // store key value pair
   // uint key typpe, Task: type element
   
   //mapping(uint => Task ) public tasks;
   mapping(uint => ClientStruct ) public clients;


   // add tasks to list whenever we deploy a SC
   // when entering first time
   constructor() public {
      //createTask("check out sitecom");
      createClient("ahmed ali", 26);
   }
   
   //string: content of the Task
   //function to create a task, id: taskCount
   function createClient(string memory _fullName, uint _age) public {
       //taskCount ++;
       //tasks[taskCount] = Task(taskCount, _content, false);
       clientCount++;
       clients[clientCount] = ClientStruct(clientCount, _fullName, _age, true);

   }
}