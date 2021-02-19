function filterContacts() {
  const search = document.getElementById("search-input");
  const filter = search.value.toLowerCase();
  const contactList = document.getElementById("contacts-list");
  const contacts = contactList.getElementsByTagName("li");

  for(let i = 0; i < contacts.length; i++) {
    var contactLink = contacts[i].getElementsByTagName("a")[0];
    var contact = contactLink.textContent || contactLink.innerText;
    if(contact.toLowerCase().indexOf(filter) === -1) {
      contacts[i].style.display = "none";
    } else {
      contacts[i].style.display = "";
    }
  }
}

// listen for load
document.addEventListener("turbolinks:load", () => {
  const search = document.getElementById("search-input");
  const contacts = document.getElementById("contacts-list");

  if (search && contacts) {
    // add key up event listener
    search.addEventListener("keyup", filterContacts);
  }
});