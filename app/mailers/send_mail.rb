require 'aescrypt'
class SendMail < ActionMailer::Base
  default from: 'admin@boliviadigna.org'
  def request_information(contact)
    @contact = contact
    mail(to: 'oscar_sgc@icloud.com', subject: 'Prueba')
  end
  
end
