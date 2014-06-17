# cq-unix-toolkit cookbook

This cookbook installs [CQ Unix Toolkit](https://github.com/Cognifide/CQ-Unix-Toolkit).

## Supported Platforms

The following platform families are supported:

* Debian
* RHEL

Since this cookbook is rather simple there's a chance it will work flawlessly on other platforms, however it hasn't been tested against any other operating system except those mentioned above.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['cq_unix_toolkit']['repository']['url']</tt></td>
    <td>String</td>
    <td>URL to CQ Unix Toolkit repository</td>
    <td><tt>https://github.com/Cognifide/CQ-Unix-Toolkit.git</tt></td>
  </tr>
  <tr>
    <td><tt>['cq_unix_toolkit']['repository']['revison']</tt></td>
    <td>String</td>
    <td>Git revision/tag</td>
    <td><tt>v1.1.1</tt></td>
  </tr>
  <tr>
    <td><tt>['cq_unix_toolkit']['user']</tt></td>
    <td>String</td>
    <td>The owner of cloned repository</td>
    <td><tt>root</tt></td>
  </tr>
  <tr>
    <td><tt>['cq_unix_toolkit']['group']</tt></td>
    <td>String</td>
    <td>Group which owns Git workspace</td>
    <td><tt>root</tt></td>
  </tr>
  <tr>
    <td><tt>['cq_unix_toolkit']['install_dir']</tt></td>
    <td>String</td>
    <td>Installation directory</td>
    <td><tt>/opt/scripts/CQ-Unix-Toolkit</tt></td>
  </tr>
</table>

## Usage

### cq-unix-toolkit::default

Include `cq-unix-toolkit` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[cq-unix-toolkit::default]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: Jakub Wadolowski (<jakub.wadolowski@cognifide.com>)
