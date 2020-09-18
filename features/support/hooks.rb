After('@logout') do
    find('#navbarSupportedContent > ul > li:nth-child(3) > a', :visible => true).click
end

After do |scenario|
    # tira um print por favor
    time = Time.new
    sufix = ('fail' if scenario.failed?) || 'sucess'
    name = scenario.name.tr(' ','_').downcase
    name += "#{scenario.__id__}_#{sufix}_#{name}_#{time.day}-#{time.month}-#{time.year}"
    shot = "logs/screenshots/#{name}.png"
    page.save_screenshot(shot)
    arquivo = attach(shot,'image/png')
    Allure.add_attachment( name: name, source: "logs/allure_report/#{name}.png", type: Allure::ContentType::PNG, test_case: true )
end