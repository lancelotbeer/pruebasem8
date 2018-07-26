option = 1



while option !=4
	puts "   **PROGRAMA ALUMNOS**"

	puts "        **MENU**"
	puts "1.- Nombre de alumnos y prom. de notas"
	puts "2.- Inasistencias alumnos"
	puts "3.- Alumnos aprobados"
	puts "4.- salio del programa"
	puts 'Escribe la opcion'
  user_option = gets.chomp.to_i

case user_option
  when 1
  file = File.open('alumnos.csv','r')
  prom_alum = file.readlines.map{ |x| x.split(', ').map(&:chomp)}
  file.close

  suma = prom_alum[0].inject(0){|sum, a| sum + a.to_i}
  divisor = prom_alum[0].length - 1
  promedio1 = suma / divisor

  puts "PROMEDIO DE ALUMNOS"
  puts "------------------------------------"
  puts "El promedio de david : #{promedio1}"


  file = File.open('alumnos.csv','r')
  prom_alum = file.readlines.map{ |x| x.split(', ').map(&:chomp)}
  file.close

  suma = prom_alum[1].inject(0){|sum, a| sum + a.to_i}
  divisor = prom_alum[1].length - 1
  promedio2 = suma / divisor
  puts "El promdio de gonzalo es : #{promedio2}"


  file = File.open('alumnos.csv','r')
  prom_alum = file.readlines.map{ |x| x.split(', ').map(&:chomp)}
  file.close

  suma = prom_alum[2].inject(0){|sum, a| sum + a.to_i}
  divisor = prom_alum[2].length - 1
  promedio3 = suma / divisor
  puts "El promedio de mai es : #{promedio3}"


  file = File.open('alumnos.csv','r')
  prom_alum = file.readlines.map{ |x| x.split(', ').map(&:chomp)}
  file.close

  suma = prom_alum[3].inject(0){|sum, a| sum + a.to_i}
  divisor = prom_alum[3].length - 1
  promedio4 = suma / divisor
  puts "El promedio de JP es : #{promedio4}"
  puts "------------------------------------"


    redo

  when 2
		puts "INASISTEMCIA DE ALUMNOS"
    file = File.open('alumnos.csv','r')
    prom_alum = file.readlines.map{ |x| x.split(', ').map(&:chomp)}
    file.close


    prom_alum1 = prom_alum[0].inject(0){ |sum, a| sum + a.count('A')}
		prom_alum2 = prom_alum[1].inject(0){ |sum, a| sum + a.count('A')}
		prom_alum3 = prom_alum[2].inject(0){ |sum, a| sum + a.count('A')}
		prom_alum4 = prom_alum[3].inject(0){ |sum, a| sum + a.count('A')}

    puts "------------------------------------"
    puts "David tiene un total de : #{prom_alum1} Inasistencia"
		puts "Gonzalo tiene un total de : #{prom_alum2} Inasistencia"
		puts "Mai tiene un total de : #{prom_alum3} Inasistencia"
		puts "JP tiene un total de : #{prom_alum4} Inasistencia"
    puts "------------------------------------"
    redo
when 3
		puts "ALUMNOS APROBADOS"


    file = File.open('alumnos.csv','r')
    prom_alum = file.readlines.map{ |x| x.split(', ').map(&:chomp)}
    file.close

		puts 'ingrese nota de aprobacion'
		nota_eva = gets.chomp.to_i
		puts "-----------------------"
		puts "Promedio de David"
    suma = prom_alum[0].inject(0){|sum, a| sum + a.to_i}
    divisor = prom_alum[0].length - 1
    promedio1 = suma / divisor
    puts "David esta :"
		if promedio1 >=  nota_eva
			puts "aprobado"
			puts "Promedio : #{promedio1}"
	    else
	    puts "reprobado"
	    puts "Promedio : #{promedio1}"
			end


		puts "-----------------------"
		puts "Promedio de Gonzalo"
		suma = prom_alum[1].inject(0){|sum, a| sum + a.to_i}
    divisor = prom_alum[1].length - 1
    promedio2 = suma / divisor
    puts "Gonzalo esta :"
    if promedio2 >= nota_eva
    puts "aprobado"
		puts "Promedio : #{promedio2}"
    else
    puts "reprobado"
    puts "Promedio : #{promedio2}"
		end

		puts "-----------------------"
		puts "Promedio de Mai"
		suma = prom_alum[2].inject(0){|sum, a| sum + a.to_i}
    divisor = prom_alum[2].length - 1
    promedio3 = suma / divisor
    puts "Mai esta :"
    if promedio3 >=  nota_eva
    puts "aprobado"
		puts "Promedio : #{promedio3}"
    else
    puts "reprobado"

	  end

		puts "-----------------------"
		puts "Promedio de JP"
		suma = prom_alum[3].inject(0){|sum, a| sum + a.to_i}
    divisor = prom_alum[3].length - 1
    promedio4 = suma / divisor
    puts "JP esta :"
    if promedio4 >=  nota_eva
    puts "aprobado"
		puts "Promedio : #{promedio4}"
    else
    puts "reprobado"
		end


when 4

  puts "******************"
  puts "Salio del programa"
  puts "   hasta luego"
  puts "******************"
  	break
	else puts "***INGRESE UNA OPCION DEL MENU***"
	end
end
