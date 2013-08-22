require_relative "contact"

class Database
	@contacts = []
  @id = 1

  def self.add_contact(my_contact)
    my_contact.id = @id
    @contacts << my_contact
    @id += 1
  end

  def self.finder(contact_id)
    @contacts.select {|contact| contact.id == contact_id.to_i}
  end

  def self.display_all
    p @contacts
  end

  def self.delete_contact
   
  end
  

end

