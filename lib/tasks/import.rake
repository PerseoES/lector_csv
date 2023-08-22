require 'roo'
namespace :import do
  desc "Especificas"
  task especificas: :environment do
    puts 'Importing data'
    data = Roo::Spreadsheet.open('lib/Especificas_2022 - especificas.csv')
    headers = data.row(1)
    # puts data.row(1)
    data.each_with_index do |row, idx|
      user_data = Hash[[headers, row].transpose]
      if not user_data['Documento'] == 'Documento'
        if user_data['Período'] == '5ta entrega. Reunión final 2022'
          nuevo = Report.new(
            documento: user_data['Documento'],
            alumno: user_data['Estudiante'],
            grupo: user_data['Grupo'],
            competencia: user_data['Competencia'],
            período: user_data['Período'],
            materia: user_data['Materia'],
            nivel: user_data['Nivel'],
            descripción: user_data['Descripción']
          )
          nuevo.save!
          if not User.exists?(documento: user_data['Documento'])
            user = User.new(
              documento: user_data['Documento'],
              alumno: user_data['Estudiante'],
              grupo: user_data['Grupo'],
            )
            user.save!
          end

          if not Group.exists?(name: user_data['Grupo'])
            g = Group.new(
              name: user_data['Grupo']
            )
            g.save!
          end
        end
      end
    end
  end

  desc "Transversales"
  task transversales: :environment do
    puts 'Importing data'
    data = Roo::Spreadsheet.open('lib/2022_competencias_transversales - CT final.csv')
    headers = data.row(1)
    # puts data.row(1)
    data.each_with_index do |row, idx|
      user_data = Hash[[headers, row].transpose]
      if not user_data['Documento'] == 'Documento'
        nuevo = TReport.new(
          documento: user_data['Documento'],
          alumno: user_data['Alumno'],
          grupo: user_data['Grupo'],
          tipo: user_data['Tipo'],
          período: user_data['Período'],
          C1E1: user_data['C1E1'],
          C1E2: user_data['C1E2'],
          C1E3: user_data['C1E3'],
          C2E1: user_data['C2E1'],
          C2E2: user_data['C2E2'],
          C2E3: user_data['C2E3'],
          C3E1: user_data['C3E1'],
          C3E2: user_data['C3E2'],
          C3E3: user_data['C3E3'],
          C3E4: user_data['C3E4'],
          C3E5: user_data['C3E5'],
          C4E1: user_data['C4E1'],
          C4E2: user_data['C4E2'],
          C4E3: user_data['C4E3'],
          C5E1: user_data['C5E1'],
          C5E2: user_data['C5E2'],
          C5E3: user_data['C5E3'],
          C5E4: user_data['C5E4'],
          C6E1: user_data['C6E1'],
          C6E2: user_data['C6E2'],
          C6E3: user_data['C6E3'],
          C7E1: user_data['C7E1'],
          C7E2: user_data['C7E2'],
          C7E3: user_data['C7E3'],
          C7E4: user_data['C7E4'],
          C7E5: user_data['C7E5'],
          promedio_evaluación: user_data['Promedio Evaluación']
        )
        nuevo.save!
      end
    end
  end

  desc "autoevaluación_primero"
  task autoevaluacion_primero: :environment do
    puts 'Importing data'
    data = Roo::Spreadsheet.open('lib/2022_competencias_transversales - Auto 1ro.csv')
    headers = data.row(1)
    # puts data.row(1)
    data.each_with_index do |row, idx|
      user_data = Hash[[headers, row].transpose]
      if not user_data['Grupo'] == 'Grupo'
        nuevo = Autoevaluacion.new(
          ci: user_data['CI (sin puntos ni guiones)'],
          C1E1_primero: user_data['C1E1 Entrego tareas en tiempo, considerando los requerimientos que se solicitaron.'],
          C1E2_primero: user_data['C1E2 Aviso oportunamente si se me presenta algún obstáculo o imprevisto cuando afecta el plazo de entrega definido.'],
          C2E1_primero: user_data['C2E1 Demuestro interés y motivación por la asignatura/por aprender cosas nuevas (curiosidad).'],
          C2E2_primero: user_data['C2E2 Participo en clase, realizando intervenciones ordenadas y oportunas.'],
          C3E1_primero: user_data['C3E1 Expongo oralmente mis ideas de forma clara y ordenada.'],
          C3E2_primero: user_data['C3E2 Expongo en forma escrita mis ideas de forma clara y ordenada.'],
          C4E1_primero: user_data['C4E1 Comparto información, y/o estrategias e ideas con otras personas.'],
          C4E2_primero: user_data['C4E2 Me hago cargo de las tareas que me corresponden cuando trabajo en equipo.'],
          C5E1_primero: user_data['C5E1 Me muestro abierto a escuchar posturas y formas de pensar diferentes a las propias.'],
          C5E2_primero: user_data['C5E2 Realizo preguntas sobre los temas que se están trabajando.'],
          C6E1_primero: user_data['C6E1 Me adapto al contexto de clase, adoptando las normas y acuerdos establecidos.'],
          C6E2_primero: user_data['C6E2 Reflexiono sobre mi proceso de aprendizaje, mis logros y dificultades, y demuestro ser consciente del mismo.'],
          C7E1_primero: user_data['C7E1 Sé comunicarme en entornos digitales (por ej. mandar un mail).'],
          C7E2_primero: user_data['C7E2 Comparto recursos en línea (por ej. subir tarea al aula).'],
        )
        nuevo.save
      end
    end
  end

  desc "autoevaluación_segundo"
  task autoevaluacion_segundo: :environment do
    puts 'Importing data'
    data = Roo::Spreadsheet.open('lib/2022_competencias_transversales - Auto 2do.csv')
    headers = data.row(1)
    # puts data.row(1)
    data.each_with_index do |row, idx|
      user_data = Hash[[headers, row].transpose]
      if not user_data['Grupo'] == 'Grupo'
        nuevo = Autoevaluacion.new(
          ci: user_data['CI (sin puntos ni guiones)'],
          C1E1_segundo: user_data['C1E1 Entrego tareas en tiempo, considerando los requerimientos que se solicitaron.'],
          C1E2_segundo: user_data['C1E2 Aviso oportunamente si se me presenta algún obstáculo o imprevisto cuando afecta el plazo de entrega definido.'],
          C2E1_segundo: user_data['C2E1 Demuestro interés y motivación por la asignatura/por aprender cosas nuevas (curiosidad).'],
          C2E2_segundo: user_data['C2E2 Participo en clase, realizando intervenciones ordenadas y oportunas.'],
          C3E1_segundo: user_data['C3E1 Expongo oralmente mis ideas de forma clara y ordenada.'],
          C3E3_segundo: user_data['C3E3 Utilizo un lenguaje acorde al espacio/interlocutor.'],
          C4E1_segundo: user_data['C4E1 Comparto información, y/o estrategias e ideas con otras personas.'],
          C4E2_segundo: user_data['C4E2 Me hago cargo de las tareas que me corresponden cuando trabajo en equipo.'],
          C5E3_segundo: user_data['C5E3 Cuando me enfrento a una información o tema logro identificar los puntos claves.'],
          C5E4_segundo: user_data['C5E4 Evalúo, cuestiono y analizo críticamente la información.'],
          C6E1_segundo: user_data['C6E1 Me adapto al contexto de clase, adoptando las normas y acuerdos establecidos.'],
          C6E2_segundo: user_data['C6E2 Reflexiono sobre mi proceso de aprendizaje, mis logros y dificultades, y demuestro ser consciente del mismo.'],
          C7E3_segundo: user_data['C7E3 Selecciono información relevante y pertinente.'],
          C7E4_segundo: user_data['C7E4 Creo y edito nuevos contenidos digitales (textos, imágenes, videos...).'],
        )
        nuevo.save
      end
    end
  end

  desc "autoevaluación_tercero"
  task autoevaluacion_tercero: :environment do
    puts 'Importing data'
    data = Roo::Spreadsheet.open('lib/2022_competencias_transversales - Auto 3ro.csv')
    headers = data.row(1)
    # puts data.row(1)
    data.each_with_index do |row, idx|
      user_data = Hash[[headers, row].transpose]
      if not user_data['Grupo'] == 'Grupo'
        nuevo = Autoevaluacion.new(
          ci: user_data['CI (sin puntos ni guiones)'],
          C1E1_tercero: user_data['C1E1 Entrego tareas en tiempo, considerando los requerimientos que se solicitaron.'],
          C1E3_tercero: user_data['C1E3 Resuelvo las dificultades que se me presentan.'],
          C2E2_tercero: user_data['C2E2 Participo en clase, realizando intervenciones ordenadas y oportunas.'],
          C2E3_tercero: user_data['C2E3 Solicito y/o recibo devoluciones sobre mi desempeño, aceptándolas e incorporándolas.'],
          C3E4_tercero: user_data['C3E4 Escucho atentamente a las demás personas.'],
          C3E5_tercero: user_data['C3E5 Intervengo, doy mi opinión, argumento, utilizando un lenguaje acorde al espacio/interlocutor.'],
          C4E2_tercero: user_data['C4E2 Me hago cargo de las tareas que me corresponden cuando trabajo en equipo.'],
          C4E3_tercero: user_data['C4E3 Busco integrar los diferentes aportes, orientándome a la consecución de un objetivo grupal.'],
          C5E3_tercero: user_data['C5E3 Cuando me enfrento a una información o tema logro identificar los puntos claves.'],
          C5E4_tercero: user_data['C5E4 Evalúo, cuestiono y analizo críticamente la información.'],
          C6E2_tercero: user_data['C6E2 Reflexiono sobre mi proceso de aprendizaje, mis logros y dificultades, y demuestro ser consciente del mismo.'],
          C6E3_tercero: user_data['C6E3 Me adapto a los cambios y situaciones diversas con actitud positiva.'],
          C7E4_tercero: user_data['C7E4 Creo y edito nuevos contenidos digitales (textos, imágenes, videos...).'],
          C7E5_tercero: user_data['C7E5 Selecciono las herramientas digitales apropiadas según la necesidad o finalidad.'],
        )
        nuevo.save
      end
    end
  end

  desc "Cant. de Evaluaciones Transversales"
  task cant_transversales: :environment do
    puts 'Importing data'
    data = Roo::Spreadsheet.open('lib/cant_registros.csv')
    headers = data.row(1)
    # puts data.row(1)
    data.each_with_index do |row, idx|
      user_data = Hash[[headers, row].transpose]
      if not user_data['ID'] == 'ID'
        nuevo = Cant.new(
          ci: user_data['CI'],
          C1E1: user_data['C1E1'],
          C1E2: user_data['C1E2'],
          C1E3: user_data['C1E3'],
          C2E1: user_data['C2E1'],
          C2E2: user_data['C2E2'],
          C2E3: user_data['C2E3'],
          C3E1: user_data['C3E1'],
          C3E2: user_data['C3E2'],
          C3E3: user_data['C3E3'],
          C3E4: user_data['C3E4'],
          C3E5: user_data['C3E5'],
          C4E1: user_data['C4E1'],
          C4E2: user_data['C4E2'],
          C4E3: user_data['C4E3'],
          C5E1: user_data['C5E1'],
          C5E2: user_data['C5E2'],
          C5E3: user_data['C5E3'],
          C5E4: user_data['C5E4'],
          C6E1: user_data['C6E1'],
          C6E2: user_data['C6E2'],
          C6E3: user_data['C6E3'],
          C7E1: user_data['C7E1'],
          C7E2: user_data['C7E2'],
          C7E3: user_data['C7E3'],
          C7E4: user_data['C7E4'],
          C7E5: user_data['C7E5']
        )
        nuevo.save
      end
    end
  end
end
