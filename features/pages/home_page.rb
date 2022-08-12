class Home < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL

    set_url '/'
    
    def validate_text_homePage(titleHomePage)
        el_title_HomePage = find('div[class="title"]')
      
        if el_title_HomePage.text.eql?(titleHomePage) != true
            raise "Expect element: #{titleHomePage}, but returned: #{el_title_HomePage.text}"
        end
    end

def validate_text_sobre_Nos(sobre_nos)
    title_sobre_nos = find('#sobre-nos > div.MuiBox-root.css-1ln06le > h3')

    if title_sobre_nos.text.eql?(sobre_nos) != true
        raise "Expect element: #{sobre_nos}, but returned: #{title_sobre_nos.text}"
    end
end

def validate_text_depoimentos(depoimentos)
    title_depoimentos = find('#depoimentos > div.title.MuiBox-root.css-0 > div h3')
  
    if title_depoimentos.text.eql?(depoimentos) != true
        raise "Expect element: #{depoimentos}, but returned: #{title_depoimentos.text}"
    end
end

def validate_text_parceiros(parceiros)
    title_parceiros = find('#parceiros > h3')
  
    if title_parceiros.text.eql?(parceiros) != true
        raise "Expect element: #{parceiros}, but returned: #{title_parceiros.text}"
    end
end

def validate_text_faleConosco(fale_conosco)
    title_fale_conosco = find('#faleConosco > div > h3')
  
    if title_fale_conosco.text.eql?(fale_conosco) != true
        raise "Expect element: #{fale_conosco}, but returned: #{title_fale_conosco.text}"
    end
end
end




