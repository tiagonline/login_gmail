
Dado(/^que eu tenho um usuario$/) do |table|
    visit('http://www.gmail.com')
      @Email = table.hashes[0]['Email']
end

Dado(/^tenho que clicar no botão next para digitar a senha$/) do |table|
 @Senha = table.hashes[0]['Senha']
end
Quando(/^faço login$/) do
    find('#Email').set @Email
    click_button 'next'
    #find('button[type=submit]', text: 'next').click
    find("#Passwd").set @Senha
end

Então(/^sou redirecionado para o meu email$/) do
  click_button 'signIn'
  sleep(10)
  
end
