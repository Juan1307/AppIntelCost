import { renderTemplateDom, useFetchApi } from './ViewUtils.js';

const savedTemplate = ({id_usuario, id_det_bien, Direccion, Ciudad, Telefono, Codigo_Postal, Tipo, Precio }) => {
  return `<div class="row item-box">
            <div class="col s4">
              <img class="item-img" src="img/home.jpg" alt="home">
            </div>
            <div class="col s8 item-description">
              <span>Direccion: ${ Direccion }</span>
              <span><b>Ciudad</b>: ${ Ciudad }</span>
              <span>Telefono: ${ Telefono }</span>
              <span>Codigo Postal: ${ Codigo_Postal }</span>
              <span><b>Tipo</b>: ${ Tipo }</span>
              <span><b>Precio</b>: ${ Precio }</span>
              <button class="mt-0 btn waves-effect waves-light red" type="button" onClick="deleteSavedItem(${id_det_bien}, ${id_usuario})" >
                Eliminar <i class="material-icons right"></i>
              </button>
            </div>
          </div>`;
}

window.deleteSavedItem = async function (id, sid) {

  const response = await useFetchApi(`php/controller/AjaxBienes.php?id_det_bien=${id}&id_user=${sid}`,'DELETE');
  const responseData = await response.json();

  const { id_usuario } = currentUser;
  ViewListSaveds(id_usuario);
}

export async function ViewListSaveds(id) {

  const response = await fetch(`php/controller/AjaxBienes.php?opt=saved&id_user=${id}`); 
  const responseData = await response.json();
  
  ViewSavedsRender(responseData);
}

function ViewSavedsRender(data){
  const nodeSaved = $('#areaGuardados');
        nodeSaved.children('.item-box').remove('');

  renderTemplateDom(nodeSaved, data, savedTemplate);
}