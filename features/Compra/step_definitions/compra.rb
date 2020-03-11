Dado("Que esteja na home do site") do
  visit'http://automationpractice.com/index.php'
   find(:xpath, '//*[@id="block_top_menu"]/ul')
   find(:xpath, '//*[@id="header"]/div[2]/div/div')
end
Quando("rolar a pagina clicar no vestido e para o mouse sobre Faded short Sleeve T-shirts") do
  page.execute_script('window.scrollBy(0,500)')
  find(:xpath, '/html/body/div/div[2]/div/div[2]/div/div[1]/ul[1]/li[1]/div/div[1]/div/a[1]/img').hover
end

Quando("clicar em Add to cart") do
  find(:xpath, '/html/body/div/div[2]/div/div[2]/div/div[1]/ul[1]/li[1]/div/div[2]/div[2]/a[1]/span').click
end
Quando("clicar em proceed to checkout") do
  find(:xpath, '//*[@id="layer_cart"]/div[1]/div[1]')
  sleep 1
  find(:xpath, '/html/body/div/div[1]/header/div[3]/div/div/div[4]/div[1]/div[2]/div[4]/a/span').click
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div')
  page.execute_script('window.scrollBy(0,500)')
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/p[2]/a[1]/span').click
  end

Quando("colocar um email valido e clicar em create an account") do
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/div/div[1]/form/h3')
  page.execute_script('window.scrollBy(0,400)')
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/div/div[1]/form/div/div[2]/input').click
  fill_in('email_create', :with => 'FABIO@hotmail.com')
  sleep 2
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/div/div[1]/form/div/div[3]/button/span').click
end

Quando("preencher informaçoes pessoais e clicar em register") do
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/div/form')
  choose('id_gender1')
  sleep 2
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/div/form/div[1]/div[2]/input').click
  fill_in('customer_firstname', :with => 'Vitor')
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/div/form/div[1]/div[3]/input').click
  fill_in('customer_lastname', :with => 'Santos')
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/div/form/div[1]/div[5]/input').click
  fill_in('passwd', :with => '123456')
  find(:id, 'uniform-days').first(:option, '2').select_option
  select('August', from: @months)
  select('1998', from: @years)
  page.execute_script('window.scrollBy(0,500)')
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/div/form/div[2]/p[1]/input').click
  fill_in('firstname', :with => 'Vitor')
  fill_in('lastname', :with => 'Santos')
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/div/form/div[2]/p[4]/input').click
  fill_in('address1', :with => 'Rua da varzea')
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/div/form/div[2]/p[6]/input').click
  fill_in('city', :with => 'São Paulo')
  page.execute_script('window.scrollBy(0,300)')
  select('Florida', from: @id_state)
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/div/form/div[2]/p[8]/input').click
  fill_in('postcode', :with => '00000')
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/div/form/div[2]/p[10]/textarea').click
  fill_in('other', :with => 'tudo nosso')
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/div/form/div[2]/p[12]/input').click
  fill_in('phone', :with => '11-51527855')
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/div/form/div[2]/p[13]/input').click
  fill_in('phone_mobile', :with => '11-983726432')
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/div/form/div[2]/p[14]/input').click
  fill_in('alias', :with => 'Minha casa')
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/div/form/div[4]/button/span/i').click
  sleep 1
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/h1')
  page.execute_script('window.scrollBy(0,700)')
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/form/p/button/span').click
end

Quando("clicar no checkbox  terms of service  e clicar em proceed to checkout") do
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/div/form/p') #identifcar a pagina.
  page.execute_script('window.scrollBy(0,500)')  
  sleep 1
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/div/form/div/p[2]/label').click
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/div/form/p/button/span').click
  sleep 2
end

Quando("escolher a forma de pagamento e confirmar a compra") do
  find(:xpath, '//*[@id="center_column"]')
  page.execute_script('window.scrollBy(0,500)')
  sleep 1
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/div/div[3]/div[1]/div/p/a').click
end

Entao("a compra sera realizada") do
  find(:xpath, '//*[@id="center_column"]')
  page.execute_script('window.scrollBy(0,500)')  
  find(:xpath, '/html/body/div/div[2]/div/div[3]/div/form/p/button/span').click
  find(:xpath, '//*[@id="center_column"]')
  page.execute_script('window.scrollBy(0,200)')  
  sleep 2
  find(:xpath, '/html/body/div/div[1]/header/div[2]/div/div/nav/div[2]/a').click
  sleep 2
  page.execute_script('window.scrollBy(0,300)')
end