<app>
  <h1>My Address Book</h1>
  <h3> Below are your contacts:</h3>

  <all-contacts contacts={loadContacts()}/>

  this.loadContacts = function() {
    var contacts = [
    {'firstName': 'Harish', 'lastName': 'Modugu', 'address': '123 St', 'city': 'SLC', 'state': 'UT', 'zip': '84102'},
    {'firstName': 'Kumar',  'lastName': 'Modugu', 'address': '456St', 'city': 'Boise', 'state': 'IA', 'zip': '83102'}
    ];
    return contacts;
  };
</app>
