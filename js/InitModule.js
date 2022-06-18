import { ViewListSaveds } from './modules/ViewSaveds.js';
import { getCurrentOptions, dataFromFilters } from './modules/ViewFilters.js';
import  ViewItemsRender from './modules/ViewItems.js';

import { renderOptionsTag, useFetchApi } from './modules/ViewUtils.js';

// auto excute function
((d) => {
  'use strict'; //set strict context

  const nodeType = $('#selectTipo'),
        nodeCities = $('#selectCiudad'),
        nodeRange = $('#rangoPrecio'),
        nodeFormFilter = $('#formulario'),

        nodeSaveds = $('#bienesGuardados'),

        nodeFormReport = $('#formReporte'),
        nodeRpCity = $('#reporteCiudad'),
        nodeRpType = $('#reporteTipo'),
        nodeLink = $('#reporteEnlace');

  // get a test one user
  (async () => {
    
    const response = await fetch('php/controller/AjaxUsuarios.php');
    const [ user_1, ] = await response.json();
    window.currentUser = user_1; // global scope

  })();


  // load an render Bienes
  (async () => {

    const response = await fetch('./../data-1.json'); 
    const responseData = await response.json();

    const { cities, types } = getCurrentOptions(responseData); 

    //render options to filters
    renderOptionsTag(nodeCities, cities);
    renderOptionsTag(nodeType, types);

    //render options to report
    renderOptionsTag(nodeRpCity, cities);
    renderOptionsTag(nodeRpType, types);

    ViewItemsRender(responseData); // initial render
  })();

  // send form filters
  nodeFormFilter.submit( async function (evt) {
    evt.preventDefault();

    const f_ciudad = nodeCities.val();
    const f_tipo = nodeType.val();
    const { result:{ from, to } } = nodeRange.data("ionRangeSlider");

    const options = { f_ciudad, f_tipo, from, to };

    const response = await fetch('./../data-1.json');
    const responseData = await response.json();

    const responseFilter = dataFromFilters(responseData)(options);
    ViewItemsRender(responseFilter); // response render

  });

  // list saved items
  nodeSaveds.click(async function(evt) {
    evt.stopPropagation();
    const { id_usuario } = currentUser //globalscope
    await ViewListSaveds(id_usuario);

  });

  nodeFormReport.submit( async function(evt) { 
    evt.preventDefault();

    const r_ciudad = nodeRpCity.val(); 
    const r_tipo = nodeRpType.val(); 

    const { id_usuario } = currentUser; //global scope
    const response  = await fetch(`php/controller/AjaxUtils.php?ciudad=${r_ciudad}&tipo=${r_tipo}&id_user=${id_usuario}`);
    const responseData = await response.json();
    
    nodeLink.attr('href', 'php/reportes/'+responseData);
    nodeLink[0].click();
  });

})(document);



