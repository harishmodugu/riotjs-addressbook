<all-contacts>
  <h4>{opts.contacts.length} contacts</h4>
  <ul class='contacts-container'>
    <li each={opts.contacts}>
      <contact value = {this} editable='false'/>
      <br/>
      <br/>
    </li>
  </ul>
</all-contacts>
