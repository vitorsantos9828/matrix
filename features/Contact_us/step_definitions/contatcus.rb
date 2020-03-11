Dado("que esteja na home") do                                                 
  visit'http://automationpractice.com/index.php'
  find(:xpath, '//*[@id="block_top_menu"]/ul')
  find(:xpath, '//*[@id="header"]/div[2]/div/div')
  page.execute_script('window.scrollBy(0,3000)')
end                                                                           
                                                                              
Quando("Clicar no campo Contact us") do                                       
  sleep 1 
  find(:xpath,'/html/body/div/div[3]/footer/div/section[3]/ul/li[5]/a').click #clique no campo contact us
end                                                                           
                                                                              
Quando("Selecionar a opção Webmaster") do                                     
  page.execute_script('window.scrollBy(0,300)') #descer a pagina contato
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/form/fieldset/div[1]/div[1]/p[4]/input').click #Email
  
end                                                                           
                                                                              
Quando("Informar um email valido") do                                         
  fill_in('Email address', :with => 'vitorsantos9828@hotmail.com')
  sleep 2
end                                                                           
                                                                              
Quando("clicar em Send") do                                                   
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/form/fieldset/div[2]/button/span').click
  sleep 2
end                                                                           
                                                                              
Entao("a mensagem nao sera enviado.") do                                      
  find(:xpath, '/html/body/div/div[2]/div/div[3]')
end                                                                           
                                                                              
Quando("Escreva um comentario") do                                            
  page.execute_script('window.scrollBy(0,200)')
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/form/fieldset/div[1]/div[2]/div/textarea').click #Campo de mensagem
  sleep 1
  fill_in('message', :with => 'DEUUUUUUU CERTOOOOOOOOOOOO')
  sleep 3
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/form/fieldset/div[2]/button/span').click #Clique em send
end      

Quando("adicionar um E-mail valido") do
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/form/fieldset/div[1]/div[1]/p[4]/input').click #Email
  fill_in('Email address', :with => 'vitorsantos9828@hotmail.com')  
end

Entao("a mensagem sera enviado.") do
  
end



                                                                              