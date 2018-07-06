# Componentes reutilizáveis
Lista de componentes reutilizáveis. Exemplo de props obrigatórios.
### Mapa.vue 
Registrar localmente `<Mapa :mapa_attrs="mapa_attrs"></Mapa>`
Definir parâmetros de `mapa_attrs` no componente pai. Exemplo:
``` Javascript
mapa_attrs:{
	center: [ -5191200.816167192, -2697150.9570380395 ],
	zoom: 13.5,
	layers:[
		{
			title: "Perímetro de adesão", 
			path:'./static/kml/perimetro_piu_setor_central.kml',
			stroke_color: 'rgba(208, 100, 35, 1)',
			fill_color: 'rgba(208, 100, 35, 0.25)',
			stroke_width: 3,
		}
	]
}
```
> Gerará um mapa com base fotográfica do bing maps, camadas kml e legenda. `Layers` aceita um número indefinido de objetos.
___

### Gallery.vue 
Registrar localmente `<Gallery :gallery_attrs="gallery_attrs"></Gallery>`
Definir parâmetros de `gallery_attrs` no componente pai. Exemplo:
``` Javascript
gallery_attrs: {
	width:992,  // largura das imagens
	height:557, // altura das imagens
	images:[
		{
			url:"./static/galeria/img1.jpg", 
			state: true,
			title: 'Image 1',
			icon: false,
			legenda: 'Lorem 1'
		},
		{
			url:"./static/galeria/img2.jpg", 
			state: false, 
			icon: false,
			title: 'Image 2',
			legenda: false
		}
	]
}
```
> Cria galeria com lazy-load no tamanho 992x557. `images` aceita indefinido de objetos. `state` define se imagem primeira imagem. `icon` ´deve ser a path para um ícone com de 64x64. As imagens devem estar no diretório `src/static/` 
___