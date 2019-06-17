After('@logout') do
    click_link @email
    click_link 'Sair'
end

After do |scenario|
    nome_cenario = scenario.name.gsub(/[A^-Za-Z0-9]/,'')
    nome.cenario = nome.cenario.gsub('','_').donwcase!
    screenshot =log/screenshots#{nome_cenario}.png
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Print maroto' :)')
end
