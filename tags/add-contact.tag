<add-contact>
  <input-field label-text='First Name:' name='firstName'/>
  <input-field label-text='Last Name:' name='lastName'/>
  <gender name='gender'/>
  <input-field label-text='Address:' name='address'/>
  <input-field label-text='City' name='city'/>
  <input-field label-text='State' name='state'/>
  <input-field label-text='Zip' name='zipcode'/>

  <button id='add-contact' onClick={addContact}>
    <h3>Add Contact</h3>
  </button>

  this.addContact = function(e) {
  let contact = {'firstName': this.firstName.value, 'lastName': this.lastName.value, 'address': this.address.value};
   riot.control.trigger(riot.EVT.addContact, contact);
  };
</add-contact>
