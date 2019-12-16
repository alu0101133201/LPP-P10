# = Funciones externas

#Función que calculo el impacto ambiental diario de un hombre
# Recibe un conjunto enumerable de alimentos
def impacto_ambiental_h(alimentos)

  proteinas = 0
  kcal = 0
  gei = 0
  terreno = 0

  for i in alimentos

    proteinas += i[0].prot(i[1])
    kcal += i[0].energia(i[1])
    gei += i[0].g(i[1])
    terreno += i[0].t(i[1])


  end

  if((proteinas < 54) || (kcal < 3000))
    return [-1,-1]

  else 
    return [gei.round(2),terreno.round(2)]
  end

end



#Función que calculo el impacto ambiental diario de una mujer
# Recibe un conjunto enumerable de alimentos
def impacto_ambiental_m(alimentos)

  proteinas = 0
  kcal = 0
  gei = 0
  terreno = 0


  for i in alimentos

    proteinas += i[0].prot(i[1])
    kcal += i[0].energia(i[1])
    gei += i[0].g(i[1])
    terreno += i[0].t(i[1])


  end

  if((proteinas < 41) || (kcal < 2300))
    return [-1,-1]

  else 
    return [gei.round(2),terreno.round(2)]
  end
end 



# Función que calcula los gases de efecto invernadero emitidos a diario por un conjunto de alimentos
# Recibe un conjunto de alimentos y un conjunto de cantidades
def gei_diario(x,y)

  aux = x.head
  gei = 0
  count = 0

  while (aux != nil)
 
    gei += aux.value.g(y[count])
 
    count = count+1 
    aux = aux.next
  
  end
  return gei.round(2) 
end



# Función que calcula los gases de efecto invernadero emitidos anualmente por un conjunto de alimentos
# Recibe un conjunto de alimentos y un conjunto de cantidades
def gei_anual(x,y)

  return((gei_diario(x,y)*365).round(2))
end


# Función que calcula el terreno empleado a diario por un conjunto de alimentos
# Recibe un conjunto de alimentos y un conjunto de cantidades
def t_diario(x,y)

  aux = x.head
  t = 0
  count = 0

  while (aux != nil)
 
    t += aux.value.t(y[count])
 
    count = count+1 
    aux = aux.next
   end
  
  return t.round(2)
end


# Función que calcula el terreno empleado anualmente por un conjunto de alimentos
# Recibe un conjunto de alimentos y un conjunto de cantidades
def t_anual(x,y)

  return((t_diario(x,y)*365).round(2))
end




#Función que modifica los precios de un menú en función de la máxima huella nutricional del menú
#Recibe un menú (array de platos) y un array de precios
def generar_precio(menu,precios)

  factor_multiplicativo = menu.max
  precios.collect { |x| (x*factor_multiplicativo.huella_nutricional).round(2)}


end








