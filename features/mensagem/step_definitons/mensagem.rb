Dado("Que eu estou na tela de contato") do
  @Contact_Page = ContactPage.new
  @Contact_Page.load
  expect(@Contact_Page).to have_email
  @Contact_page.email.set 'vitorsantos@hotmail.br'
  page.execute_script "window.scrollBy(0,1)"
  page.execute_script "window.scrollBy(1,0)"
end

Quando("eu digitar meu {string} e {string} e clicar em login.") do |useremail, usermensagem|
  page.execute_script('window.scrollBy(0,500)')
  @Contact_Page.email.set useremail
  @Contact_page.message.set usermensagem
  @Contact_page.submitMessage.click
end

Entao("Receberei uma mensagem {string}") do |mensagemerro|
  expect(@Contact_page).to have_contact
  page.has_content?(mensagemerro)
end
