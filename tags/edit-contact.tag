<edit-contact>
  <input-field label-text='First Name:' name='firstName' value={opts.contact.firstName}/>
  <input-field label-text='Last Name:' name='lastName' value={opts.contact.lastName}/>
  <gender name='gender'/>
  <input-field label-text='Address:' name='address' value={opts.contact.address}/>
  <input-field label-text='City' name='city' value={opts.contact.city}/>
  <input-field label-text='State' name='state' value={opts.contact.state}/>
  <input-field label-text='Zip' name='zipcode' value={opts.contact.zip}/>

  <button id='edit-contact' onClick={updateContact}>
    <h3>Edit Contact</h3>
  </button>

  this.updateContact = function(e) {
    let contact = {'firstName': this.firstName.value, 'lastName': this.lastName.value, 'address': this.address.value};
    riot.control.trigger(riot.EVT.updateContact, contact);
  };
</edit-contact>
