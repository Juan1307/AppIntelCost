import { renderTemplateDom, useFetchApi } from './ViewUtils.js';

const itemsTemplate = ({Id, Direccion, Ciudad, Telefono, Codigo_Postal, Tipo, Precio }) => {
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
              <button class="mt-0 btn waves-effect waves-light" type="button" onClick="saveAddItem(${Id})" >
                Guardar <i class="material-icons right"></i>
              </button>
            </div>
          </div>`
}

// global function
window.saveAddItem = async function (id_bien) {
  const { id_usuario } = currentUser; //scope global
  const request = { id_user: id_usuario, id_bien };

  const response = await useFetchApi('php/controller/AjaxBienes.php', 'POST', request);
  const responseData = await response.json();
}

export default function ViewItemsRender(data) {
  const nodeSearch = $('#areaBusqueda');
        nodeSearch.children('.item-box').remove('');

  renderTemplateDom(nodeSearch, data, itemsTemplate);
}