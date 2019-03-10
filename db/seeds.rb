# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


FamilyGoal.create([
  { familia: "EJECUTIVO PERSONA", cargo: "EJECUTIVO PERSONAS" ,  area: "ZONA SUR",  mundo: "Santander"},
  { familia: "AGENTE", cargo: "AGENTE I" ,  area: "ZONA NORTE",  mundo: "Banco y Filiales"},
  { familia: "JEFE OPERACIONES", cargo: "AGENTE II",  area: "ZONA CENTRO",  mundo: "Banefe"},
  { familia: "EJECUTIVO PYME", cargo: "EJECUTIVO PYME" ,  area: "ZONA CENTRO",  mundo: "Banco y Filiales"},
  { familia: "GESTOR COMERCIAL SENIOR", cargo: "EJECUTIVO PERSONAS" ,  area: "ZONA NORTE",  mundo: "Banco y Filiales"},
])


User.create([
  { nombre: "Juan", cargo: "EJECUTIVO PERSONAS" ,  area: "ZONA SUR",  mundo: "Santander"},
  { nombre: "Pedro", cargo: "AGENTE I" ,  area: "ZONA NORTE",  mundo: "Banco y Filiales"},
  { nombre: "Norberto", cargo: "AGENTE II",  area: "ZONA CENTRO",  mundo: "Banefe"},
  { nombre: "Emilio", cargo: "EJECUTIVO PYME" ,  area: "ZONA CENTRO",  mundo: "Banco y Filiales"},
  { nombre: "Facundo", cargo: "EJECUTIVO PERSONAS" ,  area: "ZONA NORTE",  mundo: "Banco y Filiales"},
])
