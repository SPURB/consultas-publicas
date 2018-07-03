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