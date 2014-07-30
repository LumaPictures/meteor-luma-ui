# Modals

Modal components are composed of two parts :

1. Modal Launcher

```html
{{#modal_launcher selector=filters.selector styles="btn btn-link btn-icon" }}
    {{> icon styles=filters.icon }}
{{/modal_launcher}}
```

2. Modal Container

```html
{{#if is_modal_visible filters.selector }}
    {{# modal selector=filters.selector }}
        {{> modal_header icon=filters.icon label=filters.label }}
        {{#modal_body styles="with-padding" }}
            {{> UI.dynamic template=filters.template }}
        {{/modal_body}}
    {{/modal}}
{{/if}}
```