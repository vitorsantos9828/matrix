#define pagina de mensagem 

class ContactPage < SitePrism::Page
  set_url 'http://automationpractice.com/index.php?controller=contact'
  element :email, :xpath, '//*[@id="email"]'
  element :message, :xpath, '//*[@id="message"]'
  element :submitMessage, :xpath, '//*[@id="submitMessage"]/span'
  element :contact, :xpath, '//*[@id="contact"]'
end



