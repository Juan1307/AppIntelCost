import ViewItemsRender from './modules/ViewItems.js'
import { renderOptionsTag, useFetchApi } from './modules/ViewUtils.js';

// auto excute function
((d) => {
  'use strict'; //set strict context

  const nodeType = $('#selectTipo'),
        nodeCities = $('#selectCiudad'),
        nodeRange = $('#rangoPrecio'),
        nodeFormFilter = $('#formulario');


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
    const price = str.slice(1).replace(',','.');
    return Number(price); 
  }

  const filterFromFilters = (data) => (options) => {
    const { f_ciudad, f_tipo, from, to } = options;

    const arrayFiltered = data.filter((ele) => {
      const { Ciudad, Tipo, Precio } = ele;
      const priceNumber = getPriceParse(Precio);
      
      // if(Ciudad === f_ciudad Tipo === f_tipo) return true;
      // if(Tipo === f_tipo and price) return true;
      if() return true;

    });

    return arrayFiltered;
  }

  // auto init
  (async () => {

    const response = await fetch('./../data-1.json'); 
    const responseData = await response.json();

    const { cities, types } = getCurrentOptions(responseData); 
    //render options
    renderOptionsTag(nodeCities, cities);
    renderOptionsTag(nodeType, types);

    ViewItemsRender(responseData); // initial render
  })();

  // send form filters
  nodeFormFilter.submit( async function (evt) {
    evt.preventDefault();

    const f_ciudad = nodeCities.val();
    const f_tipo = nodeType.val();
    const { result:{ from, to} } = nodeRange.data("ionRangeSlider");

    const options = { ciudad, tipo, from, to };

    const response = await fetch('./../data-1.json');
    const responseData = await response.json();

    const data = filterFromFilters(responseData)(options):

    // const response = await useFetchApi('php/controller/AjaxCiudades.php','POST', request);
    // const responseData = await response.json();

    console.log(responseData);
    //from viewItems Module
    // ViewItemsRender(responseData); // response render
  });

})(document);



