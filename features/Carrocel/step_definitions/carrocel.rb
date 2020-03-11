Dado("que esta na home do site.") do
  visit'http://automationpractice.com/index.php'
  page.execute_script('window.scrollBy(0,300)')
  find(:xpath, '//*[@id="block_top_menu"]/ul')
  find(:xpath, '//*[@id="header"]/div[2]/div/div')
end
Quando("localizar o carrocel e clicar no sinal do botao") do
  find(:xpath, '/html/body/div/div[2]/div/div[1]/div/div[1]/div/div[2]/div/a[1]').click #primeiro cliquue
  find(:xpath, '/html/body/div/div[2]/div/div[1]/div/div[1]/div/div[1]/ul/li[4]/a/img') #segunda imagem
  find(:xpath, '/html/body/div/div[2]/div/div[1]/div/div[1]/div/div[2]/div/a[1]').click  #segundo clique
  find(:xpath, '/html/body/div/div[2]/div/div[1]/div/div[1]/div/div[1]/ul/li[3]/a/img') #terceira imagem
  sleep 2
  find(:xpath, '/html/body/div/div[2]/div/div[1]/div/div[1]/div/div[2]/div/a[1]').click
  sleep 2
end

Entao("a troca de conteud sera valida") do
 
end