Before do |scenario|
    Capybara.current_session.driver.manager.delete_all_cookies
    page.driver.quit
end

After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/, '_').tr('/','_')

    if scenario.failed?
        print_screen(scenario_name.downcase!, 'Failed')
    else
        print_screen(scenario_name.downcase!, 'Sucess')
    end
end
