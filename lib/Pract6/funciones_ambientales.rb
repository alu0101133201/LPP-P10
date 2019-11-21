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



def gei_diario(x,y)

  aux = x.head

  while (aux != nil)

    

  end
end
























