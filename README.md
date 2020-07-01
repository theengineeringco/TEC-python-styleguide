# TEC Python Style Guide

This repo sets out the style guide for all TEC repositories

## Templates

Examples of what your project config files should look like can be found in the
`templates` folder.

| The templates should be used wherever possible due to useful defaults that are not enforced by nitpick

- N.B. If copying the templates, be sure to do a project wide replace of
  `<package_name>` with your package_name.

## Nitpick

Nitpick is used to ensure you conform to the latest style guide.

To get set up with Nitpick, run:

```bash
poetry add --dev nitpick="^0.21.0" toml="<0.10.1"
```

In your `pyproject.toml` add:

```toml
[tool.nitpick]
style = "https://raw.githubusercontent.com/theengineeringco/python-styleguide/master/TEC-style.toml"
```

Add in your `.pre-commit-config.yaml`, as teh first repo under the repos key, add.

```yaml
- repo: https://github.com/andreoliwa/nitpick
  rev: v0.21.4
  hooks:
    - id: nitpick
      additional_dependencies: ["toml==0.10.0"]
```

Don't forget to install your pre-commit hooks using:

```bash
pre-commit install
```
