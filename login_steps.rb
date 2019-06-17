

Dado("que eu acesso a pagina principal") do
    visit 'https://mark7-sandbox.herokuapp.com/login'    
  end
  
  Quando("eu faço o login com {string} e senha {string}") do |email, senha|
    @email = email
    login = loginPage.new
    login.faz_login(email, senha)
  end
  
  Então("devo ser autenticado com sucesso" ) do 
    expect(page).to have_content @email
  end
  
  Então ('devo ver a seguinte mensagem {string}') do |mensagem|
    expect(page).to have_content mensagem
  end
