{{#each networks}}
<section id="network-{{id}}" class="network name-{{slugify name}} {{#if serverOptions.NETWORK}}network-{{slugify serverOptions.NETWORK}}{{/if}}" data-id="{{id}}" data-nick="{{nick}}" data-options="{{tojson serverOptions}}">
	<span class="collapse-network-tooltip tooltipped tooltipped-e tooltipped-no-touch" aria-label="Collapse network…" data-alt-label="Cancel">
		<button class="collapse-network" aria-label="Collapse network…" data-id="{{id}}"></button>
	</span>
	{{> chan}}
</section>
{{/each}}
