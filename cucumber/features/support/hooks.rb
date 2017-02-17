require_relative 'helper.rb'
require_relative 'spec_helper.rb'

## PageObjets Definitions
World(Calculadora::Pages)

## Helpers Definitions
World(Helper)

## Cucumber Definitions
Before do |feature|
  ## configure the chosen browser
  Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = CONFIG['url']
  end

  ## set default max wait and maximize browser
  Capybara.default_max_wait_time = 20
  unless BROWSER.eql?('poltergeist')
    Capybara.current_session.driver.browser.manage.window.maximize
  end

end

After do |scenario|
  ## take screenshot
  scenario_name = scenario.name.gsub(/\s+/, '_').tr('/', '_')
  if scenario.failed?
    take_screenshot(scenario_name.downcase!, 'failed')
  else
    take_screenshot(scenario_name.downcase!, 'passed')
  end
  ## kills instance when not headless
  unless BROWSER.eql?('poltergeist')
    Capybara.current_session.driver.quit
  end

  #find('#menu-item-dropdown').click
  #find('a', text: 'Sair').click

end
