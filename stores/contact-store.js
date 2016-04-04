class ContactStore {

  constuctor() {
    riot.observable(this);
    this.contacts = [];
    this.bindEvents();
  }

  bindEvents() {
    this.on(riot.EVT.loadContacts, () => {

    setTimeout(() => {
      this.contacts = [{firstName: 'Harish', lastName: 'Modugu', gender: 'Male', State: 'UT'}];
      this.trigger(riot.EVT.loadContactsSuccess, this.contacts);
    }, 200);
    });
  }
}

let contactStore = new ContactStore();
console.log(riot.control);
riot.control.addStore(contactStore);

export default contactStore;
