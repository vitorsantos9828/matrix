Dado("Que esteja na home do site.") do
  visit'http://automationpractice.com/index.php'
   find(:xpath, '//*[@id="block_top_menu"]/ul')
   find(:xpath, '//*[@id="header"]/div[2]/div/div')
end
Quando("no campo Search digite Blouse e pressione enter") do
  find(:xpath, '/html/body/div/div[1]/header/div[3]/div/div/div[2]/form/input[4]').click
  fill_in('Search',:with => 'blouse')
  sleep 2
  find(:xpath, '/html/body/div/div[1]/header/div[3]/div/div/div[2]/form/button').click
  sleep 3

end

Quando("colocar o cursor do mouse sobre a miniatura") do
 page.execute_script('window.scrollBy(0,500)')
 find(:xpath,'/html/body/div/div[2]/div/div[3]/div[2]/ul/li/div/div[1]/div').hover
 sleep 2
end

Quando("Clique no botão Add to cart") do
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div[2]/ul/li/div/div[2]/div[2]/a[1]/span').click
  sleep 2
  
end

Quando("clicar no botão Proceed to checkout") do
  find(:xpath, '/html/body/div/div[1]/header/div[3]/div/div/div[4]/div[1]/div[2]/div[4]/a/span').click
  sleep 2
  
end

Entao("clica na lixeira e  o produto sera eliminado do carrinho.") do
  find(:xpath, '//*[@id="center_column"]')
  page.execute_script('window.scrollBy(0,500)')
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/div[2]/table/tbody/tr/td[7]/div/a/i').click
  sleep 2
  find(:xpath, '//*[@id="center_column"]/p')
  page.execute_script('window.scrollBy(0,200)')
 end