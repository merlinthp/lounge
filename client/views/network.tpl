{{#each networks}}
<section id="network-{{id}}" class="network name-{{slugify name}} {{#if serverOptions.NETWORK}}network-{{slugify serverOptions.NETWORK}}{{/if}}" data-id="{{id}}" data-nick="{{nick}}" data-options="{{tojson serverOptions}}">
	<span class="collapse-network-tooltip tooltipped tooltipped-e tooltipped-no-touch" aria-label="Collapse network…" data-alt-label="Cancel">
		<button class="collapse-network" aria-label="Collapse network…" data-id="{{id}}"
			aria-controls="network-{{id}}-chanlist" aria-expanded="true"></button>
	</span>
	<div id="network-{{id}}-chanlist" role="region" class="chanlist">
	{{> chan}}
	</div>
</section>
{{/each}}
