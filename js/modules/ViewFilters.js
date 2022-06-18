const getCurrentOptions = (data) => {
  const cities = [], types = []; //mutable

  for(let i = 0; data.length > i; i++){
    const { Ciudad, Tipo } = data[i];

      //check if exist in array
    if(!cities.includes(Ciudad)) cities.push(Ciudad);
    if(!types.includes(Tipo)) types.push(Tipo);
  }
  return { cities, types };
};

const getPriceParse = (str) => {
  const price = str.slice(1).replace(',','');
  return Number(price); 
}

const dataFromFilters = (data) => (options) => {
  const { f_ciudad, f_tipo, from, to } = options;

  function priceBetween (price, from, to) { 
    return price >= from && price <= to;
  }
    
  const param1 = f_ciudad.length;
  const param2 = f_tipo.length;

  const arrayFiltered = data.filter((ele) => {
    const { Ciudad, Tipo, Precio } = ele;
    const priceNumber = getPriceParse(Precio);

    if(!param1 && !param2) return priceBetween(priceNumber, from, to);
    else if(param1 && param2) {
      const equalMulti = (Tipo === f_tipo) && (Ciudad === f_ciudad);
      return equalMulti && priceBetween(priceNumber, from, to); 
    }else if(param1) {
      const equalcity = (Ciudad === f_ciudad);
      return equalcity && priceBetween(priceNumber, from, to); 
    }else if(param2){
      const equaltype = (Tipo === f_tipo);
      return equaltype && priceBetween(priceNumber, from, to); 
    } return true

  });

  return arrayFiltered;
}

export { getCurrentOptions, dataFromFilters };
