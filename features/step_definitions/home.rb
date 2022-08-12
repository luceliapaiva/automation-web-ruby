Dado('que eu acesse a home page do projeto Qa.Coders') do
  home.load
end

Então('devo visualizar a informação {string}') do |titleHomePage|
  home.validate_text_homePage(titleHomePage)
end

Dado('que estou na home page do projeto Qa.Coders') do
home.load
end

Quando('vou ao menu {string}') do |sobre_nos|
    home.click_link(sobre_nos)
 end

 Então('visualizo o menu {string}') do |title_sobre_nos|
   home.validate_text_sobre_Nos(title_sobre_nos)
 end

 Dado('que estou acessando a home page do projeto Qa.Coders') do
  home.load
end

Quando('clico em {string}') do |depoimentos|
  home.click_link(depoimentos)
end

Então('devo enxergar o texto {string}') do |title_depoimentos|
  home.validate_text_depoimentos(title_depoimentos)
end

Dado('que estou com acesso home page do projeto Qa.Coders') do
  home.load
  end

Quando('clico para ver {string}') do |parceiros|
  home.click_link(parceiros)
end

Então('devo verificar listagem de {string}') do |title_parceiros|
 home.validate_text_parceiros(title_parceiros)
end

Dado('que me encontro na home page do projeto Qa.Coders') do
  home.load
 end

Quando('clico no {string}') do |fale_conosco|
  home.click_link(fale_conosco)
end

Então('devo ver o menu {string}') do |title_fale_conosco|
 home.validate_text_faleConosco(title_fale_conosco)
end
