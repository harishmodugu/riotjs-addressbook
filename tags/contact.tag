<contact>
  <input-field label-text='First Name:' name='firstName' value={opts.value.firstName} editable={canEdit}/>
  <input-field label-text='Last Name:' name='lastName' value={opts.value.lastName} editable={canEdit}/>
  <gender name='gender'/>
  <input-field label-text='Address:' name='address' value={opts.value.address} editable={canEdit}/>
  <input-field label-text='City:' name='city' value={opts.value.city} editable={canEdit}/>
  <input-field label-text='State:' name='state' value={opts.value.state} editable={canEdit}/>
  <input-field label-text='Zip:' name='zipcode' value={opts.value.zip} editable={canEdit}/>

  this.canEdit = opts.editable;
</contact>

