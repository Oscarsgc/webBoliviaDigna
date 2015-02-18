require 'aescrypt'
class SendMail < ActionMailer::Base
  default from: 'admin@boliviadigna.org'
  def request_information(contact)
    @contact = contact
    mail(to: 'info@boliviadigna.org', subject: 'Prueba')
  end
  
end
