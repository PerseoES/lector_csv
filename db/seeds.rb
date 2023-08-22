Report.destroy_all
User.destroy_all
Group.destroy_all
Admin.destroy_all
TReport.destroy_all
Indicator.destroy_all
Autoevaluacion.destroy_all

Admin.create(username: 'Matias Carrara', email: 'matiascarrara@anima.edu.uy', password: '1234')
Admin.create(username: 'Soledad Mangino', email: 'soledadmangino@anima.edu.uy', password: 'AnimA!16')

Indicator.create(nombre: 'C1E1', descripcion: 'Entrega tareas en tiempo, considerando los requerimientos que se solicitaron.')
Indicator.create(nombre: 'C1E2', descripcion: 'Avisa oportunamente si se le presenta algún obstáculo o imprevisto cuando afecta el plazo de entrega definido.')
Indicator.create(nombre: 'C1E3', descripcion: 'Resuelve las dificultades que se le presentan.')

Indicator.create(nombre: 'C2E1', descripcion: 'Demuestra interés y motivación por la asignatura/por aprender cosas nuevas (curiosidad).')
Indicator.create(nombre: 'C2E2', descripcion: 'Participa en clase, realizando intervenciones ordenadas y oportunas.')
Indicator.create(nombre: 'C2E3', descripcion: 'Solicita y/o recibe devoluciones sobre su desempeño, aceptándolas e incorporándolas.')

Indicator.create(nombre: 'C3E1', descripcion: 'Expone oralmente sus ideas de forma clara y ordenada.')
Indicator.create(nombre: 'C3E2', descripcion: 'Expone en forma escrita sus ideas de forma clara y ordenada.')
Indicator.create(nombre: 'C3E3', descripcion: 'Utiliza un lenguaje acorde al espacio/interlocutor.')
Indicator.create(nombre: 'C3E4', descripcion: 'Escucha atentamente a las demás personas.')
Indicator.create(nombre: 'C3E5', descripcion: 'Interviene, da su opinión, argumenta, utilizando un lenguaje acorde al espacio/interlocutor.')

Indicator.create(nombre: 'C4E1', descripcion: 'Comparte información, y/o estrategias e ideas con otras personas.')
Indicator.create(nombre: 'C4E2', descripcion: 'Se hace cargo de las tareas que le corresponden cuando trabaja en equipo.')
Indicator.create(nombre: 'C4E3', descripcion: 'Busca integrar los diferentes aportes, orientándose a la consecución de un objetivo grupal.')

Indicator.create(nombre: 'C5E1', descripcion: 'Se muestra abierto a escuchar posturas y formas de pensar diferentes a las propias.')
Indicator.create(nombre: 'C5E2', descripcion: 'Realiza preguntas sobre los temas que se están trabajando.')
Indicator.create(nombre: 'C5E3', descripcion: 'Cuando se enfrenta a una información o tema logra identificar los puntos claves.')
Indicator.create(nombre: 'C5E4', descripcion: 'Evalúa, cuestiona y analiza críticamente la información.')

Indicator.create(nombre: 'C6E1', descripcion: 'Se adapta al contexto de clase, adoptando las normas y acuerdos establecidos.')
Indicator.create(nombre: 'C6E2', descripcion: 'Reflexiona sobre su proceso de aprendizaje, sus logros y dificultades, y demuestra ser consciente del mismo.')
Indicator.create(nombre: 'C6E3', descripcion: 'Se adapta a los cambios y situaciones diversas con actitud positiva.')

Indicator.create(nombre: 'C7E1', descripcion: 'Sabe comunicarse en entornos digitales (por ej. mandar un mail).')
Indicator.create(nombre: 'C7E2', descripcion: 'Comparte recursos en línea (por ej. subir tarea al aula).')
Indicator.create(nombre: 'C7E3', descripcion: 'Selecciona información relevante y pertinente.')
Indicator.create(nombre: 'C7E4', descripcion: 'Crea y edita nuevos contenidos (textos, imágenes, videos...).')
Indicator.create(nombre: 'C7E5', descripcion: 'Selecciona las herramientas digitales apropiadas según la necesidad o finalidad.')
