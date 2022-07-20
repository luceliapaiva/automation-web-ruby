Before do |scenario|
    Capybara.current_session.driver.browser.manage.delete_all_cookies
   end

After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/, '_').tr('/','_')

    if scenario.failed?
        print_screen(scenario_name.downcase!, 'Failed')
    else
        print_screen(scenario_name.downcase!, 'Success')
    end
end
