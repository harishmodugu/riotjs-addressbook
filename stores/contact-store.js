class ContactStore {

  constructor() {
    riot.observable(this);
    this.contacts = [];
    this.bindEvents();
  }

  bindEvents() {
    this.on(riot.EVT.loadContacts, () => {
      //fake an asyc request
      setTimeout(() => {
        this.contacts = this.contacts;
        this.trigger(riot.EVT.loadContactsSuccess, this.contacts);
      }, 200);
    });

    this.on(riot.EVT.addContact, (contact) => {
      this.contacts.push(contact);
      console.log('Current items:', this.contacts.length);
    });

    this.on(riot.EVT.updateContact, () => {

    });

    this.on(riot.EVT.removeContact, () => {

    });

    this.on(riot.EVT.loadContactsSuccess, () => {

    });
  }
}

let contactStore = new ContactStore();
riot.control.addStore(contactStore);

export default contactStore;
