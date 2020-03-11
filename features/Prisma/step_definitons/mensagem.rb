Dado("Que eu estou na tela de contato") do
  @contact_page = ContactPage.new
  @contact_page.load
  expect(@contact_page).to have_email
  @contact_page.email.set 'vitorsantos@hotmail.br'
  page.execute_script "window.scrollBy(0,1)"
  page.execute_script "window.scrollBy(1,0)"
end

Quando("eu digitar meu {string} e {string} e clicar em login.") do |useremail, usermensagem|
  page.execute_script('window.scrollBy(0,500)')
  @contact_page.email.set useremail
  sleep 1
  @contact_page.message.set usermensagem
  sleep 1
  @contact_page.submitMessage.click
end

Entao("Receberei uma mensagem {string}") do |mensagemerro|
  expect(@contact_page).to have_contact
  page.has_content?(mensagemerro)
end
