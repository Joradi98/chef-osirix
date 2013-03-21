Chef-OsiriX
===========
Chef cookbook to manage OsiriX

Requirements
------------
TODO: List your cookbook requirements. Be sure to include any requirements this cookbook has on platforms, libraries, other cookbooks, packages, operating systems, etc.

e.g.
#### packages
- `toaster` - osirix needs toaster to brown your bagel.

Attributes
----------
TODO: List you cookbook attributes here.

e.g.
#### osirix::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['osirix']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----

### Requirements
This cookbook just works with images, that don't include an eula (End User License Agreement) and that are located on a web server!
For creating your own dmg, just execute
```
sudo hdiutil create -srcfolder mysourcefolder mydestination
``` 
For more information read the man page of hdiutil or run 
```
hdiutil create -help
```.

### Installation
Download the bootstrap-script from "https://gist.github.com/Joradi98/5212104/" and configure the location and checksum of your dmg in ~/cookbooks/chef-osirix/recipes/default.rb.
Finally you can install OsiriX through executing this shell-script.



Contributing
------------

Bootstrap your development environment with bundler, i.e.:

```
sudo gem install bundler
bundle install --path vendor
```

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: TODO: List authors
