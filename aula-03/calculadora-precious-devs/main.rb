require_relative "./lib/metodos_calc.rb"

introduction

loop do
  show_menu
  chosen_operation = gets.chomp

  unless ['1', '2', '3', '4', '+', '-', '*', '/'].include?(chosen_operation) 
    puts '------------------------------------'
    puts 'Você escolheu sair do programa.'
    puts 'Obrigado por usar a calculadora do grupo Precious Developers. Tchau!'
    exit
  end

  calc_result = execute_calc chosen_operation

  show_result calc_result, chosen_operation
  
  repeat_calc
end
