Before do
    visit '/Login'
    find('#filial').set(CONFIG['filial']) #Está configurado no arquivo de ambiente.
    find('#empresa').set(CONFIG['empresa']) #Está configurado no arquivo de ambiente.
    find('#matricula').set(CONFIG['matricula']) #Está configurado no arquivo de ambiente.
    find('#senha').set(CONFIG['senha']) #Está configurado no arquivo de ambiente.
    click_button(class: 'qa-home-access-button-click')
end


After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/,'_').tr('/','_')
  
    if scenario.failed?
        tirar_foto(scenario_name.downcase!, 'falhou')
    else
        tirar_foto(scenario_name.downcase!, 'passou')
    end
end