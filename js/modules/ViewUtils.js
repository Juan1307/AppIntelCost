const FETCH_METHODS = ['GET', 'DELETE', 'POST', 'PUT'];

async function useFetchApi(url, method = 'GET', data = null) {
  if(!FETCH_METHODS.includes(method)) return console.error('Error: Method unavailable');
  // check if get - delete
  const BY_URL = FETCH_METHODS.slice(0, 2);
  const options = BY_URL.includes(method) ? { method } : { method, body: JSON.stringify(data) }; 
  return await fetch(url, options);
}

function renderOptionsTag($selectNode, values, state = false) {
  $.each(values, function(key, value) {
  $selectNode.append($("<option></option>")
             .attr("value", state ? key : value)
             .text(value));
  });
}

function renderTemplateDom ($domNode, data, callback) {
  $.each(data, function(index, value) {
    $domNode.append($(callback(value)));
  });
}

export { renderOptionsTag, renderTemplateDom,  useFetchApi }