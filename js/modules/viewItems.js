import { renderTemplateDom, useFetchApi } from './ViewUtils.js';

const itemsTemplate = ({Direccion, Ciudad, Telefono, Codigo_Postal, Tipo, Precio }) => {
  return `<div class="row item-box">
            <div class="col s4">
              <img class="item-img" src="img/home.jpg" alt="home">
            </div>
            <div class="col s8 item-description">
              <span>Direccion: ${ Direccion }</span>
              <span>Ciudad: ${ Ciudad }</span>
              <span>Telefono: ${ Telefono }</span>
              <span>Codigo Postal: ${ Codigo_Postal }</span>
              <span>Tipo: ${ Tipo }</span>
              <span>Precio: ${ Precio }</span>
              <button class="mt-0 btn waves-effect waves-light" type="button">
                Guardar <i class="material-icons right"></i>
              </button>
            </div>
          </div>`
}

export default function ViewItemsRender(data) {
  const nodeSearch = $('#areaBusqueda');
  renderTemplateDom(nodeSearch, data, itemsTemplate);
}