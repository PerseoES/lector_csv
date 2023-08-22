# README

#### Run task to load file

* antes de correr db:migrate, correr rake db:migrate:up VERSION=20220911220939

```
rake import:especificas
rake import:transversales
rake import:autoevaluacion
```

drop database prueba_csv_development;
create database prueba_csv_development;

<table>
  <tr>
    <td><%= @t_report.id %></td>
    <td><%= @t_report.documento %></td>
    <td><%= @t_report.alumno %></td>
    <td><%= @t_report.grupo %></td>
    <td><%= @t_report.tipo %></td>
    <td><%= @t_report.período %></td>
    <td><%= @t_report.C1E1 %></td>
    <td><%= @t_report.C1E2 %></td>
    <td><%= @t_report.C1E3 %></td>
    <td><%= @t_report.C2E1 %></td>
    <td><%= @t_report.C2E2 %></td>
    <td><%= @t_report.C2E3 %></td>
    <td><%= @t_report.C3E1 %></td>
    <td><%= @t_report.C3E2 %></td>
    <td><%= @t_report.C3E3 %></td>
    <td><%= @t_report.C3E4 %></td>
    <td><%= @t_report.C3E5 %></td>
    <td><%= @t_report.C4E1 %></td>
    <td><%= @t_report.C4E2 %></td>
    <td><%= @t_report.C4E3 %></td>
    <td><%= @t_report.C5E1 %></td>
    <td><%= @t_report.C5E2 %></td>
    <td><%= @t_report.C5E3 %></td>
    <td><%= @t_report.C5E4 %></td>
    <td><%= @t_report.C6E1 %></td>
    <td><%= @t_report.C6E2 %></td>
    <td><%= @t_report.C6E3 %></td>
    <td><%= @t_report.C7E1 %></td>
    <td><%= @t_report.C7E2 %></td>
    <td><%= @t_report.C7E3 %></td>
    <td><%= @t_report.C7E4 %></td>
    <td><%= @t_report.C7E5 %></td>
    <td><%= @t_report.promedio_evaluación %></td>
  </tr>
</table>


*Responsabilidad sobre las tareas
*Proactividad
*Comunicación
*Trabajo colaborativo
*Apertura y pensamiento crítico
*Desarrollo personal
*Alfabetización digital



 * Marca temporal,
 * CI (sin puntos ni guiones),
 * Grupo,

 * C1E1 Entrego tareas en tiempo, considerando los requerimientos que se solicitaron.,
 * C1E2 Aviso oportunamente si se me presenta algún obstáculo o imprevisto cuando afecta el plazo de entrega definido.,
 * C2E1 Demuestro interés y motivación por la asignatura/por aprender cosas nuevas (curiosidad).,
 * C2E2 Participo en clase, realizando intervenciones ordenadas y oportunas.,
 * C3E1 Expongo oralmente mis ideas de forma clara y ordenada.,
 * C3E2 Expongo en forma escrita mis ideas de forma clara y ordenada.,
 * C4E1 Comparto información, y/o estrategias e ideas con otras personas.,
 * C4E2 Me hago cargo de las tareas que me corresponden cuando trabajo en equipo.,
 * C5E1 Me muestro abierto a escuchar posturas y formas de pensar diferentes a las propias.,
 * C5E2 Realizo preguntas sobre los temas que se están trabajando.,
 * C6E1 Me adapto al contexto de clase, adoptando las normas y acuerdos establecidos.,
 * C6E2 Reflexiono sobre mi proceso de aprendizaje, mis logros y dificultades, y demuestro ser consciente del mismo.,
 * C7E1 Sé comunicarme en entornos digitales (por ej. mandar un mail).,
 * C7E2 Comparto recursos en línea (por ej. subir tarea al aula).,

 * C1E1 Entrego tareas en tiempo, considerando los requerimientos que se solicitaron.
 * C1E2 Aviso oportunamente si se me presenta algún obstáculo o imprevisto cuando afecta el plazo de entrega definido.
 * C2E1 Demuestro interés y motivación por la asignatura/por aprender cosas nuevas (curiosidad).
 * C2E2 Participo en clase, realizando intervenciones ordenadas y oportunas.
 * C3E1 Expongo oralmente mis ideas de forma clara y ordenada.
 * C3E3 Utilizo un lenguaje acorde al espacio/interlocutor.
 * C4E1 Comparto información, y/o estrategias e ideas con otras personas.
 * C4E2 Me hago cargo de las tareas que me corresponden cuando trabajo en equipo.
 * C5E3 Cuando me enfrento a una información o tema logro identificar los puntos claves.
 * C5E4 Evalúo, cuestiono y analizo críticamente la información.
 * C6E1 Me adapto al contexto de clase, adoptando las normas y acuerdos establecidos.
 * C6E2 Reflexiono sobre mi proceso de aprendizaje, mis logros y dificultades, y demuestro ser consciente del mismo.
 * C7E3 Selecciono información relevante y pertinente.
 * C7E4 Creo y edito nuevos contenidos digitales (textos, imágenes, videos...).

 * C1E1 Entrego tareas en tiempo, considerando los requerimientos que se solicitaron.,
 * C1E3 Resuelvo las dificultades que se me presentan.,
 * C2E2 Participo en clase, realizando intervenciones ordenadas y oportunas.,
 * C2E3 Solicito y/o recibo devoluciones sobre mi desempeño, aceptándolas e incorporándolas.,
 * C3E4 Escucho atentamente a las demás personas.,
 * C3E5 Intervengo, doy mi opinión, argumento, utilizando un lenguaje acorde al espacio/interlocutor.,
 * C4E2 Me hago cargo de las tareas que me corresponden cuando trabajo en equipo.,
 * C4E3 Busco integrar los diferentes aportes, orientándome a la consecución de un objetivo grupal.,
 * C5E3 Cuando me enfrento a una información o tema logro identificar los puntos claves.,
 * C5E4 Evalúo, cuestiono y analizo críticamente la información.,
 * C6E2 Reflexiono sobre mi proceso de aprendizaje, mis logros y dificultades, y demuestro ser consciente del mismo.,
 * C6E3 Me adapto a los cambios y situaciones diversas con actitud positiva.,
 * C7E4 Creo y edito nuevos contenidos digitales (textos, imágenes, videos...).,
 * C7E5 Selecciono las herramientas digitales apropiadas según la necesidad o finalidad.


 <td rowspan = "2"><%= (((@t_report.C1E1).sub ",", ".").to_f + ((@t_report.C1E2).sub ",", ".").to_f) / 2 %></td>
