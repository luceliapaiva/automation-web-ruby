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
end