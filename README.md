# TEC Python Style Guide

This repo sets out the style guide for all TEC repositories

Examples of what your files should look like can be found in the `templates`
folder.

- N.B. If copying the templates, be sure to do a project wide replace of
  `<package_name>` with your package_name.

To to ensure you conform to the styleguide and are up to date with the latest version run:

`poetry add nitpick="^0.21.0" toml="<0.10.1"`

In your `pyproject.toml` add:

```toml
[tool.nitpick]
style = "https://raw.githubusercontent.com/theengineeringco/python-styleguide/master/TEC-style.toml"
```

Add in your `.pre-commit-config.yaml`, as teh first repo under the repos tag,
add.

```yaml
- repo: https://github.com/andreoliwa/nitpick
  rev: v0.21.4
  hooks:
    - id: nitpick
      additional_dependencies: ["toml==0.10.0"]
```

Don't forget to install your pre-commit hooks using:

`pre-commit install`
